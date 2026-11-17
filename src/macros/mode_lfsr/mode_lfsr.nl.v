module mode_lfsr (clk,
    en,
    freeze,
    reseed,
    rst,
    tick,
    leds,
    seed);
 input clk;
 input en;
 input freeze;
 input reseed;
 input rst;
 input tick;
 output [7:0] leds;
 input [3:0] seed;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire net1;
 wire net2;
 wire net14;
 wire net13;
 wire net12;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net15;
 wire net16;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net17;
 wire net18;
 wire net19;

 sky130_fd_sc_hd__decap_3 FILLER_0_10 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_28 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_62 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_13 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_51 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_32 ();
 sky130_fd_sc_hd__inv_2 _32_ (.A(leds[2]),
    .Y(_08_));
 sky130_fd_sc_hd__inv_2 _33_ (.A(leds[0]),
    .Y(_09_));
 sky130_fd_sc_hd__and2b_2 _34_ (.A_N(net2),
    .B(net9),
    .X(_10_));
 sky130_fd_sc_hd__o21a_2 _35_ (.A1(net16),
    .A2(_10_),
    .B1(net1),
    .X(_11_));
 sky130_fd_sc_hd__o21ai_1 _36_ (.A1(net16),
    .A2(_10_),
    .B1(net1),
    .Y(_12_));
 sky130_fd_sc_hd__xor2_2 _37_ (.A(leds[7]),
    .B(leds[5]),
    .X(_13_));
 sky130_fd_sc_hd__xor2_2 _38_ (.A(net13),
    .B(net14),
    .X(_14_));
 sky130_fd_sc_hd__xnor2_2 _39_ (.A(_13_),
    .B(_14_),
    .Y(_15_));
 sky130_fd_sc_hd__mux2_1 _40_ (.A0(_15_),
    .A1(net5),
    .S(net16),
    .X(_16_));
 sky130_fd_sc_hd__a21oi_2 _41_ (.A1(leds[0]),
    .A2(net11),
    .B1(net4),
    .Y(_17_));
 sky130_fd_sc_hd__o21ai_2 _42_ (.A1(net10),
    .A2(_16_),
    .B1(_17_),
    .Y(_00_));
 sky130_fd_sc_hd__mux2_1 _43_ (.A0(_09_),
    .A1(net6),
    .S(net16),
    .X(_18_));
 sky130_fd_sc_hd__a21oi_2 _44_ (.A1(_11_),
    .A2(_18_),
    .B1(net4),
    .Y(_19_));
 sky130_fd_sc_hd__o21a_2 _45_ (.A1(leds[1]),
    .A2(_11_),
    .B1(_19_),
    .X(_01_));
 sky130_fd_sc_hd__nand2_2 _46_ (.A(net16),
    .B(net7),
    .Y(_20_));
 sky130_fd_sc_hd__o211a_2 _47_ (.A1(leds[1]),
    .A2(net16),
    .B1(_11_),
    .C1(_20_),
    .X(_21_));
 sky130_fd_sc_hd__a211o_2 _48_ (.A1(leds[2]),
    .A2(_12_),
    .B1(_21_),
    .C1(net4),
    .X(_02_));
 sky130_fd_sc_hd__mux2_1 _49_ (.A0(_08_),
    .A1(net8),
    .S(net16),
    .X(_22_));
 sky130_fd_sc_hd__a21oi_2 _50_ (.A1(_11_),
    .A2(_22_),
    .B1(net15),
    .Y(_23_));
 sky130_fd_sc_hd__o21a_2 _51_ (.A1(net17),
    .A2(_11_),
    .B1(_23_),
    .X(_03_));
 sky130_fd_sc_hd__mux2_1 _52_ (.A0(leds[3]),
    .A1(net5),
    .S(net16),
    .X(_24_));
 sky130_fd_sc_hd__o21ba_2 _53_ (.A1(net10),
    .A2(_24_),
    .B1_N(net15),
    .X(_25_));
 sky130_fd_sc_hd__o21a_2 _54_ (.A1(net18),
    .A2(_11_),
    .B1(_25_),
    .X(_04_));
 sky130_fd_sc_hd__mux2_1 _55_ (.A0(net13),
    .A1(net6),
    .S(net3),
    .X(_26_));
 sky130_fd_sc_hd__mux2_1 _56_ (.A0(net19),
    .A1(_26_),
    .S(_11_),
    .X(_27_));
 sky130_fd_sc_hd__or2_2 _57_ (.A(net15),
    .B(_27_),
    .X(_05_));
 sky130_fd_sc_hd__nand2b_2 _58_ (.A_N(net16),
    .B(net12),
    .Y(_28_));
 sky130_fd_sc_hd__a31o_2 _59_ (.A1(_11_),
    .A2(_20_),
    .A3(_28_),
    .B1(net15),
    .X(_29_));
 sky130_fd_sc_hd__o21ba_2 _60_ (.A1(leds[6]),
    .A2(_11_),
    .B1_N(_29_),
    .X(_06_));
 sky130_fd_sc_hd__mux2_1 _61_ (.A0(leds[6]),
    .A1(net8),
    .S(net16),
    .X(_30_));
 sky130_fd_sc_hd__mux2_1 _62_ (.A0(leds[7]),
    .A1(_30_),
    .S(_11_),
    .X(_31_));
 sky130_fd_sc_hd__or2_2 _63_ (.A(net15),
    .B(_31_),
    .X(_07_));
 sky130_fd_sc_hd__dfxtp_2 _64_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .Q(leds[0]));
 sky130_fd_sc_hd__dfxtp_2 _65_ (.CLK(clknet_1_1__leaf_clk),
    .D(_01_),
    .Q(leds[1]));
 sky130_fd_sc_hd__dfxtp_2 _66_ (.CLK(clknet_1_1__leaf_clk),
    .D(_02_),
    .Q(leds[2]));
 sky130_fd_sc_hd__dfxtp_2 _67_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .Q(net14));
 sky130_fd_sc_hd__dfxtp_2 _68_ (.CLK(clknet_1_0__leaf_clk),
    .D(_04_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_2 _69_ (.CLK(clknet_1_0__leaf_clk),
    .D(_05_),
    .Q(net12));
 sky130_fd_sc_hd__dfxtp_2 _70_ (.CLK(clknet_1_1__leaf_clk),
    .D(_06_),
    .Q(leds[6]));
 sky130_fd_sc_hd__dfxtp_2 _71_ (.CLK(clknet_1_0__leaf_clk),
    .D(_07_),
    .Q(leds[7]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__buf_2 fanout16 (.A(net3),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(net14),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(net13),
    .X(net18));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(net12),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(en),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(freeze),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(reseed),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(rst),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(seed[0]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(seed[1]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(seed[2]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(seed[3]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(tick),
    .X(net9));
 sky130_fd_sc_hd__buf_1 max_cap10 (.A(net11),
    .X(net10));
 sky130_fd_sc_hd__buf_1 max_cap11 (.A(_12_),
    .X(net11));
 sky130_fd_sc_hd__buf_4 max_cap12 (.A(net12),
    .X(leds[5]));
 sky130_fd_sc_hd__buf_4 max_cap13 (.A(net13),
    .X(leds[4]));
 sky130_fd_sc_hd__buf_4 max_cap14 (.A(net14),
    .X(leds[3]));
 sky130_fd_sc_hd__clkbuf_2 max_cap15 (.A(net4),
    .X(net15));
endmodule
