/*
 * Design 2: a Knight Rider scanner. A block of lit LEDs bounces from one end of the row to the other.
 *
 *   width   1 to 4 LEDs lit in the block
 *   split   mirror the block, so two scanners cross in the middle
 *   invert  light everything except the block
 *   flip    (a pulse) reverse the direction
 *   pause   freeze the scanner
 */
`default_nettype none

module mode_scanner (
    input  wire       clk,
    input  wire       rst,
    input  wire       en,
    input  wire       tick,
    input  wire [1:0] width,
    input  wire       split,
    input  wire       invert,
    input  wire       flip,
    input  wire       pause,
    output wire [7:0] leds
);

    reg [2:0] pos;
    reg       dir;      // 0 moving right (towards the high LEDs), 1 moving left

    wire [2:0] maxpos = 3'd7 - {1'b0, width};

    always @(posedge clk) begin
        if (rst) begin
            pos <= 3'd0;
            dir <= 1'b0;
        end else if (en) begin
            if (flip) begin
                dir <= ~dir;
            end else if (tick && !pause) begin
                if (!dir) begin
                    if (pos >= maxpos) begin
                        dir <= 1'b1;
                        pos <= maxpos - 3'd1;
                    end else begin
                        pos <= pos + 3'd1;
                    end
                end else begin
                    if (pos == 3'd0) begin
                        dir <= 1'b0;
                        pos <= 3'd1;
                    end else begin
                        pos <= pos - 3'd1;
                    end
                end
            end
        end
    end

    wire [7:0] mask  = (8'd2 << width) - 8'd1;     // 1, 3, 7 or 15 LEDs wide
    wire [7:0] block = mask << pos;
    wire [7:0] mirror = {block[0], block[1], block[2], block[3], block[4], block[5], block[6], block[7]};
    wire [7:0] shown  = split ? (block | mirror) : block;

    assign leds = invert ? ~shown : shown;

endmodule
