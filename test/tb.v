`default_nettype none
`timescale 1ns / 1ps

/* Testbench wrapper: instantiates the tile and makes the wires the cocotb tests in test.py drive.

   The 1 MHz clock is made here in Verilog, which is far faster than a clock driven from Python.

   TICK_BASE sets how many clocks one tick is. The chip uses 15, where the slowest tick is two
   seconds long. The RTL tests use 5, so the same logic ticks 1024 times faster. The gate level
   netlist is the chip itself, so it always runs with 15 (see test.py for what that changes).
*/
module tb ();

  // Dump the signals to a FST file. You can view it with gtkwave or surfer.
  // Not at gate level: that run is millions of clocks long.
`ifndef GL_TEST
  initial begin
    $dumpfile("tb.fst");
    $dumpvars(0, tb);
    #1;
  end
`endif

  reg clk = 1'b0;
  always #500 clk = ~clk;

  // Wire up the inputs and outputs:
  reg rst_n = 1'b0;
  reg ena = 1'b1;
  reg [7:0] ui_in = 8'd0;
  reg [7:0] uio_in = 8'd0;
  wire [7:0] uo_out;
  wire [7:0] uio_out;
  wire [7:0] uio_oe;

`ifdef GL_TEST
  wire VPWR = 1'b1;
  wire VGND = 1'b0;

  tt_um_maxeland07_tiny_tiny_tapeout_macro_edition_1x1 user_project (
      .VPWR(VPWR),
      .VGND(VGND),
`else
  tt_um_maxeland07_tiny_tiny_tapeout_macro_edition_1x1 #(
      .TICK_BASE(5)
  ) user_project (
`endif
      .ui_in  (ui_in),    // Dedicated inputs
      .uo_out (uo_out),   // Dedicated outputs
      .uio_in (uio_in),   // IOs: Input path
      .uio_out(uio_out),  // IOs: Output path
      .uio_oe (uio_oe),   // IOs: Enable path (active high: 0=input, 1=output)
      .ena    (ena),      // enable - goes high when design is selected
      .clk    (clk),      // clock
      .rst_n  (rst_n)     // not reset
  );

endmodule
