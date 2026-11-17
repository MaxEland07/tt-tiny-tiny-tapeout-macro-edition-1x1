![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# Tiny Tiny Tapeout: macro edition (1x1)

Four little designs on one Tiny Tapeout tile (sky130, 161 x 111.52 um). Each design is hardened on its own as a macro, and the tile places the four macros and wires them to the pins. Two switches pick which one is live.

- [Project documentation](docs/info.md): what it does and how to test it on the demo board.

| ui[1:0] | Design | Macro | Size (um) |
| --- | --- | --- | --- |
| 00 | 8-bit up/down counter | `mode_counter` | 45 x 55 |
| 01 | Random LEDs (LFSR) | `mode_lfsr` | 36 x 36 |
| 10 | Knight Rider scanner | `mode_scanner` | 42 x 42 |
| 11 | Tiny synth, plays a tune | `mode_synth` | 55 x 55 |

## Where things are

| Path | What |
| --- | --- |
| `src/project.v` | The tile: input synchronisers, the tick, the output multiplexer and the four macro instances. The only Tiny Tapeout source file. |
| `src/config.json` | LibreLane settings for the tile. The macro settings are above the "DO NOT CHANGE" line; below it is the stock Tiny Tapeout block. |
| `src/macros/<name>/` | The hardened macros: GDS, LEF, netlists, timing libraries and SPEF. |
| `blocks/<name>/` | What each macro was made from: its Verilog, LibreLane config and power grid script. |
| `test/` | cocotb tests for the whole tile, at RTL and at gate level. |

## How the macros get power

A Tiny Tapeout tile may only use met1 to met4, and its power comes down vertical met4 straps. So the macros stop one layer lower: they route on met1 to met3 and have their VPWR and VGND pins as horizontal met3 straps (`blocks/<name>/pdn_cfg.tcl`). The tile's met4 straps run over the macros and connect to those pins with vias. Nothing uses met5.

In `src/config.json`, `FP_PDN_HORIZONTAL_LAYER` is set to met3 so the tile's power grid looks for the macro pins there, and each macro is placed so that at least one VPWR and one VGND strap cross it.

## Rebuilding a macro

The macros were hardened with LibreLane in Vulkos from the files in `blocks/`. To rebuild one:

```sh
cd blocks/mode_counter
librelane --dockerized config.json
```

Then copy from `runs/<tag>/final/` into `src/macros/mode_counter/`: `gds/`, `lef/`, `nl/`, `pnl/` as single files, `lib/<corner>/*.lib` as `lib/<corner>.lib`, and `spef/<corner>/*.spef` as `spef/<corner>.spef`. If the macro changes size, update its location in `src/config.json`.

## Tests

```sh
cd test
make -B              # RTL: the macros are simulated from blocks/
make -B GATES=yes    # gate level: the tile's netlist plus the macros' netlists
```

The tests only touch the pins of the chip, so they say what a person with the demo board would see: the pin map, the two-clock input synchronisers, the tick speeds, each design's behaviour, that only the live design makes sound, that sleeping designs keep their state, and reset.

At RTL the testbench makes one tick 1024 times shorter than on the chip. The gate level netlist is the chip itself, so it runs at the real tick length (32768 clocks at the fastest speed) and skips the two slowest speeds.
