// SIMULATION COPY. The real design is src/mode_synth.v in the project "tt4 block: synth",
// which is hardened into the macro in macros/mode_synth. Keep the two the same.
/*
 * Design 3: a tiny synthesiser. It makes a square wave on the speaker pin.
 *
 *   note   which of 16 notes to play (a C pentatonic scale, C4 up to C7)
 *   gate   (a button) sound the note while it is held
 *   auto   (a button) play a built-in 16-note tune instead, one note per tick
 *
 * The LEDs show the note as a bar that grows with the pitch. The notes assume a 1 MHz clock.
 */
`default_nettype none

module mode_synth (
    input  wire       clk,
    input  wire       rst,
    input  wire       en,
    input  wire       tick,
    input  wire [3:0] note,
    input  wire       gate,
    input  wire       auto,
    output wire       spk,
    output wire [7:0] leds
);

    // The built-in tune, as note numbers.
    function [3:0] melody;
        input [3:0] s;
        case (s)
            4'd0:  melody = 4'd5;
            4'd1:  melody = 4'd7;
            4'd2:  melody = 4'd8;
            4'd3:  melody = 4'd9;
            4'd4:  melody = 4'd8;
            4'd5:  melody = 4'd7;
            4'd6:  melody = 4'd5;
            4'd7:  melody = 4'd3;
            4'd8:  melody = 4'd4;
            4'd9:  melody = 4'd5;
            4'd10: melody = 4'd7;
            4'd11: melody = 4'd5;
            4'd12: melody = 4'd4;
            4'd13: melody = 4'd3;
            4'd14: melody = 4'd2;
            default: melody = 4'd0;
        endcase
    endfunction

    // Clock cycles per half wave, minus one, for a 1 MHz clock: 500000 / frequency - 1.
    function [10:0] half_wave;
        input [3:0] n;
        case (n)
            4'd0:  half_wave = 11'd1910;   // C4  262 Hz
            4'd1:  half_wave = 11'd1702;   // D4  294 Hz
            4'd2:  half_wave = 11'd1516;   // E4  330 Hz
            4'd3:  half_wave = 11'd1275;   // G4  392 Hz
            4'd4:  half_wave = 11'd1135;   // A4  440 Hz
            4'd5:  half_wave = 11'd955;    // C5  523 Hz
            4'd6:  half_wave = 11'd850;    // D5  587 Hz
            4'd7:  half_wave = 11'd757;    // E5  659 Hz
            4'd8:  half_wave = 11'd637;    // G5  784 Hz
            4'd9:  half_wave = 11'd567;    // A5  880 Hz
            4'd10: half_wave = 11'd477;    // C6 1047 Hz
            4'd11: half_wave = 11'd425;    // D6 1175 Hz
            4'd12: half_wave = 11'd378;    // E6 1319 Hz
            4'd13: half_wave = 11'd318;    // G6 1568 Hz
            4'd14: half_wave = 11'd283;    // A6 1760 Hz
            default: half_wave = 11'd238;  // C7 2093 Hz
        endcase
    endfunction

    reg [3:0] step;

    always @(posedge clk) begin
        if (rst || !auto)         step <= 4'd0;
        else if (en && tick)      step <= step + 4'd1;
    end

    wire [3:0] cur      = auto ? melody(step) : note;
    wire       sounding = en & (gate | auto);
    wire [10:0] limit   = half_wave(cur);

    reg [10:0] cnt;
    reg        sq;

    always @(posedge clk) begin
        if (rst || !sounding) begin
            cnt <= 11'd0;
            sq  <= 1'b0;
        end else if (cnt >= limit) begin
            cnt <= 11'd0;
            sq  <= ~sq;
        end else begin
            cnt <= cnt + 11'd1;
        end
    end

    assign spk  = sq;
    assign leds = 8'hFF >> (3'd7 - cur[3:1]);

endmodule
