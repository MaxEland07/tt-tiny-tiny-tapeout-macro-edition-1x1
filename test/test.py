"""
cocotb tests for the whole tile, tt_um_tiny4: the glue logic and the four macros together.

The tests only touch the pins of the chip (ui_in, uio_in, uo_out, uio_out, uio_oe, rst_n), so
they say what a person with the demo board would see. Each macro has its own, much longer, test
in its block project. These tests check what only the tile can get wrong: the pin map, the input
synchronisers, the tick speeds, which design is live, and that sleeping designs keep their state.

The macros are hardened separately, so this project has no Verilog for them in src/. For
simulation, tb/mode_*.v are copies of the Verilog in the four block projects.

Run in Vulkos: simulator cocotb, top module tb, test module test_tt_um_tiny4.
"""

import cocotb
from cocotb.triggers import FallingEdge, ValueChange, with_timeout
from cocotb.utils import get_sim_time

CLOCK_NS = 1000                       # 1 MHz, made in tb/tb.v
COUNTER, RANDOM, SCANNER, SYNTH = range(4)

# Notes of the synth (Hz) and its built-in tune, as in the mode_synth block project.
NOTE_HZ = (
    261.63, 293.66, 329.63, 392.00, 440.00,
    523.25, 587.33, 659.26, 783.99, 880.00,
    1046.50, 1174.66, 1318.51, 1567.98, 1760.00,
    2093.00,
)
TUNE = (5, 7, 8, 9, 8, 7, 5, 3, 4, 5, 7, 5, 4, 3, 2, 0)


# ---------------------------------------------------------------- reading the pins

def leds(dut):
    return int(dut.uo_out.value)


def live(dut):
    """uio[5:2], one LED per design."""
    return (int(dut.uio_out.value) >> 2) & 0xF


def heartbeat(dut):
    return (int(dut.uio_out.value) >> 6) & 1


def speaker(dut):
    return (int(dut.uio_out.value) >> 7) & 1


# ---------------------------------------------------------------- driving the pins

async def clocks(dut, n):
    for _ in range(n):
        await FallingEdge(dut.clk)


async def reset(dut):
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await clocks(dut, 5)
    dut.rst_n.value = 1


async def switches(dut, design, speed=2, data=0, a=0, b=0):
    """Set the switches and buttons, then wait 4 clocks for them to pass the synchronisers.

    Call it straight after reset() or tick(), so that no tick lands inside those 4 clocks.
    """
    dut.ui_in.value = (data << 4) | (speed << 2) | design
    dut.uio_in.value = (b << 1) | a
    await clocks(dut, 4)


async def tick(dut, n=1):
    """Wait for n ticks. The heartbeat pin flips on every tick, on the clock edge the designs step on."""
    for _ in range(n):
        before = heartbeat(dut)
        while heartbeat(dut) == before:
            await with_timeout(ValueChange(dut.uio_out), 5, "sec")
        await FallingEdge(dut.clk)


async def speaker_edges(dut, n):
    """How many times the speaker pin changes in n clocks."""
    edges, last = 0, speaker(dut)
    for _ in range(n):
        await FallingEdge(dut.clk)
        edges += speaker(dut) != last
        last = speaker(dut)
    return edges


async def speaker_hz(dut):
    """Time one full wave on the speaker pin."""
    async def becomes(level):
        while speaker(dut) != level:
            await with_timeout(ValueChange(dut.uio_out), 20, "ms")
        return get_sim_time("ns")

    await becomes(0)
    t0 = await becomes(1)
    await becomes(0)
    t1 = await becomes(1)
    await FallingEdge(dut.clk)
    return 1e9 / (t1 - t0)


# ---------------------------------------------------------------- what the designs should show

def lfsr_next(s):
    fb = ((s >> 7) ^ (s >> 5) ^ (s >> 4) ^ (s >> 3)) & 1
    return ((s << 1) & 0xFF) | fb


def scanner_at(ticks):
    """One LED, bouncing between LED 0 and LED 7, after that many ticks from reset."""
    phase = ticks % 14
    return 1 << (phase if phase <= 7 else 14 - phase)


def bar(note):
    return (1 << (note // 2 + 1)) - 1


# ---------------------------------------------------------------- tests

@cocotb.test()
async def pins_after_reset(dut):
    """Pin directions, the unused pins, and what each design shows straight out of reset."""
    await reset(dut)
    assert int(dut.uio_oe.value) == 0b11111100, "uio[1:0] are the buttons (inputs), uio[7:2] outputs"
    assert heartbeat(dut) == 0 and speaker(dut) == 0
    for design, want in ((COUNTER, 0x00), (RANDOM, 0xA5), (SCANNER, 0x01), (SYNTH, 0x01)):
        await switches(dut, design)
        assert live(dut) == 1 << design, f"design {design}: live LEDs {live(dut):04b}"
        assert leds(dut) == want, f"design {design}: LEDs {leds(dut):#04x} after reset, expected {want:#04x}"
        assert int(dut.uio_out.value) & 0b11 == 0, "uio_out[1:0] must stay 0"
        assert int(dut.uio_oe.value) == 0b11111100
        assert speaker(dut) == 0


@cocotb.test()
async def inputs_take_two_clocks(dut):
    """The switches go through two flip-flops: a change shows after 2 clocks, not before."""
    await reset(dut)
    dut.ui_in.value = SCANNER
    await clocks(dut, 1)
    assert live(dut) == 1 << COUNTER, "the switch got through after 1 clock: no synchroniser?"
    await clocks(dut, 1)
    assert live(dut) == 1 << SCANNER, "the switch did not get through after 2 clocks"


@cocotb.test()
async def four_tick_speeds(dut):
    """Each speed step is 4 times faster, and the heartbeat flips once per tick."""
    await reset(dut)
    period = {}
    for speed in (3, 2, 1, 0):
        await switches(dut, COUNTER, speed=speed)
        await tick(dut)
        t0 = get_sim_time("ns")
        await tick(dut)
        period[speed] = round((get_sim_time("ns") - t0) / CLOCK_NS)
        dut._log.info(f"speed {speed}: one tick every {period[speed]} clocks, {1e6 / period[speed]:.2f} per second at 1 MHz")
    assert period[3] in (2**5, 2**15), f"fastest tick is {period[3]} clocks, expected 32 (test) or 32768 (chip)"
    assert period[2] == 4 * period[3]
    assert period[1] == 16 * period[3]
    assert period[0] == 64 * period[3]


@cocotb.test()
async def counter_design(dut):
    """Design 0 on the pins: up, down, 3s, hold, Gray code, button A clears, button B sets."""
    await reset(dut)
    await switches(dut, COUNTER)
    count = 0
    for _ in range(20):
        await tick(dut)
        count += 1
        assert leds(dut) == count
    await switches(dut, COUNTER, data=0b0001)            # ui[4]: down
    for _ in range(5):
        await tick(dut)
        count -= 1
        assert leds(dut) == count
    await switches(dut, COUNTER, data=0b1000)            # ui[7]: in 3s
    for _ in range(5):
        await tick(dut)
        count += 3
        assert leds(dut) == count
    await switches(dut, COUNTER, data=0b0010)            # ui[5]: hold
    await tick(dut, 3)
    assert leds(dut) == count
    await switches(dut, COUNTER, data=0b0100)            # ui[6]: Gray code
    assert leds(dut) == count ^ (count >> 1)
    await tick(dut)
    count += 1
    assert leds(dut) == count ^ (count >> 1)
    await switches(dut, COUNTER, a=1)                    # button A: clear
    assert leds(dut) == 0x00
    await tick(dut)
    assert leds(dut) == 0x00
    await switches(dut, COUNTER, b=1)                    # button B: all ones
    assert leds(dut) == 0xFF
    await tick(dut)
    assert leds(dut) == 0xFF
    await switches(dut, COUNTER)
    await tick(dut)
    assert leds(dut) == 0x00, "0xFF + 1 should wrap to 0"
    assert await speaker_edges(dut, 40) == 0


@cocotb.test()
async def random_design(dut):
    """Design 1 on the pins: the random sequence, button A reseeds once and hisses, button B freezes."""
    await reset(dut)
    await switches(dut, RANDOM)
    value = 0xA5
    for _ in range(12):
        await tick(dut)
        value = lfsr_next(value)
        assert leds(dut) == value
    for seed in range(16):
        await switches(dut, RANDOM, data=seed, a=1)
        value = (seed << 4) | (seed ^ 0xF)
        assert leds(dut) == value, f"seed {seed}: LEDs {leds(dut):#04x}"
        await tick(dut)                                  # A still held: it shifts, it does not reseed again
        value = lfsr_next(value)
        assert leds(dut) == value
        await switches(dut, RANDOM, data=seed)
        await tick(dut)
        value = lfsr_next(value)
        assert leds(dut) == value
    await switches(dut, RANDOM, b=1)                     # button B: freeze
    await tick(dut, 3)
    assert leds(dut) == value
    await switches(dut, RANDOM)
    await tick(dut)
    assert leds(dut) == lfsr_next(value)
    # The hiss: noise on the speaker while A is held, silence otherwise.
    assert await speaker_edges(dut, 400) == 0
    dut.uio_in.value = 1
    assert await speaker_edges(dut, 400) > 5, "no hiss while button A is held"
    dut.uio_in.value = 0
    await clocks(dut, 4)
    assert await speaker_edges(dut, 400) == 0


@cocotb.test()
async def scanner_design(dut):
    """Design 2 on the pins: the bounce, width, split, invert, button A turns round, button B pauses."""
    await reset(dut)
    await switches(dut, SCANNER)
    for ticks in range(1, 31):
        await tick(dut)
        assert leds(dut) == scanner_at(ticks), f"tick {ticks}: LEDs {leds(dut):08b}"
    await tick(dut)                                      # tick 31: the LED is on 3, going up
    assert leds(dut) == 0b00001000
    await switches(dut, SCANNER, data=0b0011)            # ui[5:4]: 4 LEDs wide
    assert leds(dut) == 0b01111000
    await switches(dut, SCANNER, data=0b0111)            # ui[6]: split
    assert leds(dut) == 0b01111110
    await switches(dut, SCANNER, data=0b1011)            # ui[7]: invert
    assert leds(dut) == 0b10000111
    await switches(dut, SCANNER)
    await tick(dut)
    assert leds(dut) == 0b00010000
    await switches(dut, SCANNER, a=1)                    # button A: turn round, once
    assert leds(dut) == 0b00010000
    await tick(dut)
    assert leds(dut) == 0b00001000
    await tick(dut)
    assert leds(dut) == 0b00000100
    await switches(dut, SCANNER, b=1)                    # button B: pause
    await tick(dut, 3)
    assert leds(dut) == 0b00000100
    await switches(dut, SCANNER)
    await tick(dut)
    assert leds(dut) == 0b00000010
    assert await speaker_edges(dut, 40) == 0


@cocotb.test()
async def synth_design(dut):
    """Design 3 on the pins: button A plays the note on the switches in tune, button B plays the tune."""
    await reset(dut)
    await switches(dut, SYNTH, speed=0, data=9)
    assert leds(dut) == bar(9)
    assert await speaker_edges(dut, 300) == 0, "sound without a button"
    for note in (0, 4, 9, 15):
        await switches(dut, SYNTH, speed=0, data=note, a=1)
        assert leds(dut) == bar(note)
        hz = await speaker_hz(dut)
        assert abs(hz / NOTE_HZ[note] - 1) < 0.003, f"note {note} is {hz:.2f} Hz, expected {NOTE_HZ[note]:.2f} Hz"
        await switches(dut, SYNTH, speed=0, data=note)
        assert await speaker_edges(dut, 50) == 0, "sound after button A was released"
    # Button B: the built-in tune, one note per tick. The switches no longer pick the note.
    await switches(dut, SYNTH, speed=2, data=15)
    await tick(dut)
    await switches(dut, SYNTH, speed=2, data=15, b=1)
    assert leds(dut) == bar(TUNE[0])
    assert await speaker_edges(dut, 60) == 0             # the first half wave of a C5 is 956 clocks
    for i in range(1, 21):
        await tick(dut)
        assert leds(dut) == bar(TUNE[i % 16]), f"tune step {i}"
    await switches(dut, SYNTH, speed=0, data=15, b=1)
    assert await speaker_edges(dut, 3000) >= 2, "the tune makes no sound"


@cocotb.test()
async def only_the_live_design_sounds(dut):
    """A held note stops the moment another design is picked, and comes back with the synth."""
    await reset(dut)
    await switches(dut, SYNTH, speed=0, data=15, a=1)
    assert await speaker_edges(dut, 1000) >= 2
    for design in (COUNTER, SCANNER):
        await switches(dut, design, speed=0, data=15, a=1)
        assert await speaker_edges(dut, 1000) == 0, f"the synth sounds while design {design} is live"
    await switches(dut, SYNTH, speed=0, data=15, a=1)
    assert await speaker_edges(dut, 1000) >= 2


@cocotb.test()
async def sleeping_designs_keep_their_state(dut):
    """A design stands still while another one is live, and carries on from where it was."""
    await reset(dut)
    await switches(dut, COUNTER)
    await tick(dut, 5)
    assert leds(dut) == 5
    await switches(dut, RANDOM)
    assert leds(dut) == 0xA5, "the random design moved while the counter was live"
    await tick(dut, 3)
    random_value = lfsr_next(lfsr_next(lfsr_next(0xA5)))
    assert leds(dut) == random_value
    await switches(dut, SCANNER)
    assert leds(dut) == 0b00000001, "the scanner moved while it was asleep"
    await tick(dut, 2)
    assert leds(dut) == 0b00000100
    await switches(dut, COUNTER)
    assert leds(dut) == 5, "the counter counted while it was asleep"
    await tick(dut)
    assert leds(dut) == 6
    await switches(dut, RANDOM)
    assert leds(dut) == random_value
    await switches(dut, SCANNER)
    assert leds(dut) == 0b00000100


@cocotb.test()
async def reset_in_the_middle(dut):
    """Pulling rst_n low at any time puts every design back to its start."""
    await reset(dut)
    for design in (COUNTER, RANDOM, SCANNER):
        await switches(dut, design)
        await tick(dut, 3)
    await reset(dut)
    assert heartbeat(dut) == 0
    for design, want in ((COUNTER, 0x00), (RANDOM, 0xA5), (SCANNER, 0x01)):
        await switches(dut, design)
        assert leds(dut) == want
