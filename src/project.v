/*
 * Tiny Tiny Tapeout, macro edition: the glue around four hardened macros.
 *
 * Two input pins pick which design is live, the other designs sleep and keep their state.
 *
 *   ui[1:0]   design:  00 counter   01 random LEDs   10 scanner   11 synth
 *   ui[3:2]   speed:   00 slowest ... 11 fastest (ticks about 0.5, 2, 8 and 30 per second at 1 MHz)
 *   ui[7:4]   data for the live design (see below)
 *   uio[0]    button A
 *   uio[1]    button B
 *
 *   uo[7:0]   eight LEDs, driven by the live design
 *   uio[2]..uio[5]   which design is live, one LED each
 *   uio[6]    heartbeat LED, flips on every tick
 *   uio[7]    speaker
 *
 * Data and buttons per design:
 *
 *   0 counter   ui[4] count down, ui[5] hold, ui[6] Gray code, ui[7] count in 3s,
 *               A clears to 0, B sets all ones
 *   1 random    ui[7:4] the seed, A reseeds (and hisses on the speaker while held), B freezes
 *   2 scanner   ui[5:4] width, ui[6] split, ui[7] invert, A reverses, B pauses
 *   3 synth     ui[7:4] the note, A plays it, B plays the built-in tune
 *
 * The four designs (mode_counter, mode_lfsr, mode_scanner, mode_synth) are hardened macros.
 * Their Verilog is not in this project: LibreLane gets their netlists, LEFs and GDS from macros/.
 */

`default_nettype none

module tt_um_maxeland07_tiny_tiny_tapeout_macro_edition_1x1 #(
    // The slowest tick is 2^(TICK_BASE+6) clocks, the fastest 2^TICK_BASE.
    parameter TICK_BASE = 15
) (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    wire rst = ~rst_n;

    // Switches and buttons are asynchronous, so they go through two flip-flops first.
    reg [7:0] ui_meta, ui_s;
    reg [1:0] btn_meta, btn_s;
    reg       a_prev;

    always @(posedge clk) begin
        ui_meta  <= ui_in;
        ui_s     <= ui_meta;
        btn_meta <= uio_in[1:0];
        btn_s    <= btn_meta;
        a_prev   <= btn_s[0];
    end

    wire [1:0] mode  = ui_s[1:0];
    wire [1:0] speed = ui_s[3:2];
    wire [3:0] data  = ui_s[7:4];
    wire       btn_a = btn_s[0];
    wire       btn_b = btn_s[1];
    wire       a_rise = btn_a & ~a_prev;

    wire sel_counter = (mode == 2'd0);
    wire sel_lfsr    = (mode == 2'd1);
    wire sel_scanner = (mode == 2'd2);
    wire sel_synth   = (mode == 2'd3);

    // A free-running prescaler makes the tick that paces the designs. Speed 0 is the slowest.
    reg [TICK_BASE+5:0] pre;

    always @(posedge clk) begin
        if (rst) pre <= 0;
        else     pre <= pre + 1'b1;
    end

    wire [3:0] carry = {&pre[TICK_BASE+5:0], &pre[TICK_BASE+3:0], &pre[TICK_BASE+1:0], &pre[TICK_BASE-1:0]};
    wire       tick  = carry[2'd3 - speed];

    reg hb;
    always @(posedge clk) begin
        if (rst)       hb <= 1'b0;
        else if (tick) hb <= ~hb;
    end

    // A fast 16-bit noise generator, for the hiss on the random design's speaker.
    reg [15:0] noise;
    always @(posedge clk) begin
        if (rst)                    noise <= 16'hACE1;
        else if (pre[3:0] == 4'hF)  noise <= {noise[14:0], noise[15] ^ noise[13] ^ noise[12] ^ noise[10]};
    end

    // The four macros.
    wire [7:0] leds_counter, leds_lfsr, leds_scanner, leds_synth;
    wire       synth_spk;

    mode_counter u_counter (
        .clk(clk), .rst(rst), .en(sel_counter), .tick(tick),
        .down(data[0]), .hold(data[1]), .gray(data[2]), .step3(data[3]),
        .clear(btn_a), .setall(btn_b),
        .leds(leds_counter)
    );

    mode_lfsr u_lfsr (
        .clk(clk), .rst(rst), .en(sel_lfsr), .tick(tick),
        .freeze(btn_b), .reseed(a_rise), .seed(data),
        .leds(leds_lfsr)
    );

    mode_scanner u_scanner (
        .clk(clk), .rst(rst), .en(sel_scanner), .tick(tick),
        .width(data[1:0]), .split(data[2]), .invert(data[3]),
        .flip(a_rise), .pause(btn_b),
        .leds(leds_scanner)
    );

    mode_synth u_synth (
        .clk(clk), .rst(rst), .en(sel_synth), .tick(tick),
        .note(data), .gate(btn_a), .auto(btn_b),
        .spk(synth_spk), .leds(leds_synth)
    );

    // Pick the live design.
    reg [7:0] leds;
    always @(*) begin
        case (mode)
            2'd0:    leds = leds_counter;
            2'd1:    leds = leds_lfsr;
            2'd2:    leds = leds_scanner;
            default: leds = leds_synth;
        endcase
    end

    wire spk = synth_spk | (sel_lfsr & btn_a & noise[0]);

    assign uo_out  = leds;
    assign uio_out = {spk, hb, sel_synth, sel_scanner, sel_lfsr, sel_counter, 2'b00};
    assign uio_oe  = 8'b11111100;

    wire _unused_ok = &{ena, uio_in[7:2]};

endmodule
