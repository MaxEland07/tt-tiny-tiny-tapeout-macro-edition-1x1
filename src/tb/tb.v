/*
 * Simulation wrapper for tt_um_maxeland07_tiny_tiny_tapeout_macro_edition_1x1. The cocotb tests in tb/test_tt_um_tiny4.py drive it.
 *
 * It makes the 1 MHz clock here in Verilog, which is far faster than a clock driven from Python.
 *
 * TICK_BASE sets how many clocks one tick is. The chip uses 15, where the slowest tick is two
 * seconds long. The tests use 5, so the same logic ticks 1024 times faster and a run takes
 * seconds. Define REAL_TICK to simulate with the chip's value.
 */

`default_nettype none
`timescale 1ns / 1ps

module tb;

`ifdef REAL_TICK
    localparam TICK_BASE = 15;
`else
    localparam TICK_BASE = 5;
`endif

    reg clk = 1'b0;
    always #500 clk = ~clk;

    reg        rst_n  = 1'b0;
    reg        ena    = 1'b1;
    reg  [7:0] ui_in  = 8'd0;
    reg  [7:0] uio_in = 8'd0;
    wire [7:0] uo_out;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    tt_um_maxeland07_tiny_tiny_tapeout_macro_edition_1x1 #(.TICK_BASE(TICK_BASE)) dut (
        .ui_in(ui_in),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n)
    );

endmodule
