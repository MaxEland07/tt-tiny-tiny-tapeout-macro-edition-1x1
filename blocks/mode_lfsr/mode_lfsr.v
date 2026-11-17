/*
 * Design 1: a pseudo-random LED generator (an 8-bit linear feedback shift register).
 *
 * The register shifts left once per tick and feeds back bits 7, 5, 4 and 3, which visits all
 * 255 non-zero values before it repeats. Press reseed to load {seed, ~seed}, which is never zero,
 * so the register can not lock up. Hold freeze to stop on a value, like rolling dice.
 */
`default_nettype none

module mode_lfsr (
    input  wire       clk,
    input  wire       rst,
    input  wire       en,
    input  wire       tick,
    input  wire       freeze,
    input  wire       reseed,
    input  wire [3:0] seed,
    output wire [7:0] leds
);

    reg [7:0] s;
    wire      fb = s[7] ^ s[5] ^ s[4] ^ s[3];

    always @(posedge clk) begin
        if (rst) begin
            s <= 8'hA5;
        end else if (en) begin
            if (reseed)               s <= {seed, ~seed};
            else if (tick && !freeze) s <= {s[6:0], fb};
        end
    end

    assign leds = s;

endmodule
