# Tests for the tile

[cocotb](https://docs.cocotb.org/en/stable/) tests that drive the pins of the whole tile. See the comment at the top of [test.py](test.py) for what they check.

## How to run

RTL simulation (the macros are simulated from their Verilog in `../blocks/`):

```sh
make -B
```

Gate level simulation: harden the project, copy the tile's powered netlist (`../runs/wokwi/final/pnl/<top module>.pnl.v`) to `gate_level_netlist.v`, then run:

```sh
make -B GATES=yes
```

The Makefile adds the netlists of the four macros from `../src/macros/`. This run uses the chip's real tick length, so it takes a few minutes and does not write a waveform.

## How to view the waveform

The RTL run writes `tb.fst`:

```sh
gtkwave tb.fst tb.gtkw
```
