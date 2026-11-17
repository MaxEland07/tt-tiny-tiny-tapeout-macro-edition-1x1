/*
 * Design 0: an 8-bit up/down counter you can watch on the LEDs.
 *
 *   down    count backwards
 *   hold    freeze the count
 *   gray    show the count in Gray code (only one LED changes at a time)
 *   step3   count in steps of 3 instead of 1
 *   clear   (level) jump to 00000000
 *   setall  (level) jump to 11111111
 *
 * It only counts while it is the selected design, and keeps its value while another one runs.
 */
`default_nettype none

module mode_counter (
    input  wire       clk,
    input  wire       rst,
    input  wire       en,
    input  wire       tick,
    input  wire       down,
    input  wire       hold,
    input  wire       gray,
    input  wire       step3,
    input  wire       clear,
    input  wire       setall,
    output wire [7:0] leds
);

    reg  [7:0] cnt;
    wire [7:0] step = step3 ? 8'd3 : 8'd1;

    always @(posedge clk) begin
        if (rst) begin
            cnt <= 8'd0;
        end else if (en) begin
            if (clear)                   cnt <= 8'd0;
            else if (setall)             cnt <= 8'hFF;
            else if (tick && !hold)      cnt <= down ? (cnt - step) : (cnt + step);
        end
    end

    assign leds = gray ? (cnt ^ (cnt >> 1)) : cnt;

endmodule
