## How it works

Four small designs are hardened separately as macros and placed on the tile: mode_counter, mode_lfsr, mode_scanner and mode_synth. The glue logic around them synchronises the inputs, makes a tick at four speeds (about 0.5, 2, 8 and 30 per second at 1 MHz, chosen by ui[3:2]), enables only the design that ui[1:0] picks (00 counter, 01 random LEDs, 10 scanner, 11 synth), and multiplexes its eight LED outputs. The other designs sleep and keep their state. The synth divides the 1 MHz clock down to a square wave: 16 notes of a C pentatonic scale from C4 (262 Hz) to C7 (2093 Hz), picked by ui[7:4]. The macros have their power pins on met3, so the tile's met4 power straps connect to them and nothing uses met5.

## How to test

Use a 1 MHz clock. Hold rst_n low for a few cycles, then raise it. Set ui[1:0] to 00 and ui[3:2] to 11: the eight LEDs count up in binary, about 30 counts per second. Button A clears the count, button B sets all ones. Set ui[1:0] to 01 for random LEDs: button A reseeds from ui[7:4], button B freezes. Set ui[1:0] to 10 for the scanner: button A reverses it, button B pauses. Set ui[1:0] to 11 and ui[7:4] to 0100, then hold button A to hear A4 (440 Hz), or hold button B to hear the built-in tune. uio[6] flips on every tick and one of uio[2] to uio[5] shows which design is live.

## External hardware

Eight LEDs with resistors on uo[0] to uo[7]. LEDs on uio[2] to uio[6]. A small speaker or piezo buzzer on uio[7]. Switches on ui[0] to ui[7] and push buttons on uio[0] and uio[1].
