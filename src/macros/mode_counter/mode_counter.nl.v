module mode_counter (clear,
    clk,
    down,
    en,
    gray,
    hold,
    rst,
    setall,
    step3,
    tick,
    leds);
 input clear;
 input clk;
 input down;
 input en;
 input gray;
 input hold;
 input rst;
 input setall;
 input step3;
 input tick;
 output [7:0] leds;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire net1;
 wire \cnt[0] ;
 wire \cnt[1] ;
 wire \cnt[2] ;
 wire \cnt[3] ;
 wire \cnt[4] ;
 wire \cnt[5] ;
 wire \cnt[6] ;
 wire \cnt[7] ;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net18;
 wire net17;
 wire net16;
 wire net15;
 wire net14;
 wire net13;
 wire net12;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net19;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;

 sky130_fd_sc_hd__decap_3 FILLER_0_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_79 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_66 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_80 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_49 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_16 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_51 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_59 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_40 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_46 ();
 sky130_fd_sc_hd__inv_2 _073_ (.A(net5),
    .Y(_019_));
 sky130_fd_sc_hd__nand2_2 _074_ (.A(\cnt[1] ),
    .B(net4),
    .Y(_020_));
 sky130_fd_sc_hd__xnor2_4 _075_ (.A(\cnt[0] ),
    .B(_020_),
    .Y(net18));
 sky130_fd_sc_hd__nand2_2 _076_ (.A(\cnt[2] ),
    .B(net4),
    .Y(_021_));
 sky130_fd_sc_hd__xnor2_4 _077_ (.A(\cnt[1] ),
    .B(_021_),
    .Y(net17));
 sky130_fd_sc_hd__nand2_2 _078_ (.A(\cnt[3] ),
    .B(net4),
    .Y(_022_));
 sky130_fd_sc_hd__xnor2_4 _079_ (.A(\cnt[2] ),
    .B(_022_),
    .Y(net16));
 sky130_fd_sc_hd__nand2_2 _080_ (.A(\cnt[4] ),
    .B(net4),
    .Y(_023_));
 sky130_fd_sc_hd__xnor2_4 _081_ (.A(\cnt[3] ),
    .B(_023_),
    .Y(net15));
 sky130_fd_sc_hd__nand2_2 _082_ (.A(\cnt[5] ),
    .B(net4),
    .Y(_024_));
 sky130_fd_sc_hd__xnor2_4 _083_ (.A(\cnt[4] ),
    .B(_024_),
    .Y(net14));
 sky130_fd_sc_hd__nand2_2 _084_ (.A(\cnt[6] ),
    .B(net4),
    .Y(_025_));
 sky130_fd_sc_hd__xnor2_4 _085_ (.A(\cnt[5] ),
    .B(_025_),
    .Y(net13));
 sky130_fd_sc_hd__nand2_2 _086_ (.A(\cnt[7] ),
    .B(net4),
    .Y(_026_));
 sky130_fd_sc_hd__xnor2_4 _087_ (.A(\cnt[6] ),
    .B(_026_),
    .Y(net12));
 sky130_fd_sc_hd__a211o_2 _088_ (.A1(net9),
    .A2(_019_),
    .B1(net7),
    .C1(net1),
    .X(_027_));
 sky130_fd_sc_hd__nand2_2 _089_ (.A(net3),
    .B(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nor2_4 _090_ (.A(net1),
    .B(net11),
    .Y(_029_));
 sky130_fd_sc_hd__nand2b_2 _091_ (.A_N(net7),
    .B(\cnt[0] ),
    .Y(_030_));
 sky130_fd_sc_hd__a22oi_2 _092_ (.A1(\cnt[0] ),
    .A2(net11),
    .B1(_029_),
    .B2(_030_),
    .Y(_031_));
 sky130_fd_sc_hd__nor2_2 _093_ (.A(net6),
    .B(_031_),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_2 _094_ (.A(net21),
    .B(net11),
    .Y(_032_));
 sky130_fd_sc_hd__or2_2 _095_ (.A(net8),
    .B(net19),
    .X(_033_));
 sky130_fd_sc_hd__nand2_2 _096_ (.A(net8),
    .B(net19),
    .Y(_034_));
 sky130_fd_sc_hd__and3_2 _097_ (.A(\cnt[1] ),
    .B(_033_),
    .C(_034_),
    .X(_035_));
 sky130_fd_sc_hd__a21o_2 _098_ (.A1(_033_),
    .A2(_034_),
    .B1(\cnt[1] ),
    .X(_036_));
 sky130_fd_sc_hd__nand2b_2 _099_ (.A_N(_035_),
    .B(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__xnor2_2 _100_ (.A(\cnt[0] ),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__o21ai_2 _101_ (.A1(net7),
    .A2(_038_),
    .B1(_029_),
    .Y(_039_));
 sky130_fd_sc_hd__a21oi_2 _102_ (.A1(_032_),
    .A2(_039_),
    .B1(net6),
    .Y(_001_));
 sky130_fd_sc_hd__nand2_2 _103_ (.A(net23),
    .B(net11),
    .Y(_040_));
 sky130_fd_sc_hd__a21o_2 _104_ (.A1(\cnt[0] ),
    .A2(_036_),
    .B1(_035_),
    .X(_041_));
 sky130_fd_sc_hd__or2_2 _105_ (.A(\cnt[2] ),
    .B(net19),
    .X(_042_));
 sky130_fd_sc_hd__nand2_2 _106_ (.A(\cnt[2] ),
    .B(net19),
    .Y(_043_));
 sky130_fd_sc_hd__and2_2 _107_ (.A(_042_),
    .B(_043_),
    .X(_044_));
 sky130_fd_sc_hd__nand2_2 _108_ (.A(_041_),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__or2_2 _109_ (.A(_041_),
    .B(_044_),
    .X(_046_));
 sky130_fd_sc_hd__and2_2 _110_ (.A(_045_),
    .B(_046_),
    .X(_047_));
 sky130_fd_sc_hd__o21ai_2 _111_ (.A1(net7),
    .A2(_047_),
    .B1(_029_),
    .Y(_048_));
 sky130_fd_sc_hd__a21oi_2 _112_ (.A1(_040_),
    .A2(_048_),
    .B1(net6),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_2 _113_ (.A(net26),
    .B(net11),
    .Y(_049_));
 sky130_fd_sc_hd__xor2_2 _114_ (.A(\cnt[3] ),
    .B(net19),
    .X(_050_));
 sky130_fd_sc_hd__a21oi_2 _115_ (.A1(_043_),
    .A2(_045_),
    .B1(_050_),
    .Y(_051_));
 sky130_fd_sc_hd__a31o_2 _116_ (.A1(_043_),
    .A2(_045_),
    .A3(_050_),
    .B1(net7),
    .X(_052_));
 sky130_fd_sc_hd__o21ai_2 _117_ (.A1(_051_),
    .A2(_052_),
    .B1(_029_),
    .Y(_053_));
 sky130_fd_sc_hd__a21oi_2 _118_ (.A1(_049_),
    .A2(_053_),
    .B1(net6),
    .Y(_003_));
 sky130_fd_sc_hd__nand2_2 _119_ (.A(net24),
    .B(net11),
    .Y(_054_));
 sky130_fd_sc_hd__o21a_2 _120_ (.A1(\cnt[3] ),
    .A2(\cnt[2] ),
    .B1(net19),
    .X(_055_));
 sky130_fd_sc_hd__a31o_2 _121_ (.A1(_041_),
    .A2(_044_),
    .A3(_050_),
    .B1(_055_),
    .X(_056_));
 sky130_fd_sc_hd__or2_2 _122_ (.A(\cnt[4] ),
    .B(net19),
    .X(_057_));
 sky130_fd_sc_hd__nand2_2 _123_ (.A(\cnt[4] ),
    .B(net19),
    .Y(_058_));
 sky130_fd_sc_hd__and2_2 _124_ (.A(_057_),
    .B(_058_),
    .X(_059_));
 sky130_fd_sc_hd__nand2_2 _125_ (.A(_056_),
    .B(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__or2_2 _126_ (.A(_056_),
    .B(_059_),
    .X(_061_));
 sky130_fd_sc_hd__and2_2 _127_ (.A(_060_),
    .B(_061_),
    .X(_062_));
 sky130_fd_sc_hd__o21ai_2 _128_ (.A1(net7),
    .A2(_062_),
    .B1(net10),
    .Y(_063_));
 sky130_fd_sc_hd__a21oi_2 _129_ (.A1(_054_),
    .A2(_063_),
    .B1(net6),
    .Y(_004_));
 sky130_fd_sc_hd__nand2_2 _130_ (.A(net25),
    .B(net11),
    .Y(_064_));
 sky130_fd_sc_hd__xor2_2 _131_ (.A(\cnt[5] ),
    .B(net19),
    .X(_065_));
 sky130_fd_sc_hd__a21oi_2 _132_ (.A1(_058_),
    .A2(_060_),
    .B1(_065_),
    .Y(_066_));
 sky130_fd_sc_hd__a31o_2 _133_ (.A1(_058_),
    .A2(_060_),
    .A3(_065_),
    .B1(net7),
    .X(_067_));
 sky130_fd_sc_hd__o21ai_2 _134_ (.A1(_066_),
    .A2(_067_),
    .B1(net10),
    .Y(_068_));
 sky130_fd_sc_hd__a21oi_2 _135_ (.A1(_064_),
    .A2(_068_),
    .B1(net6),
    .Y(_005_));
 sky130_fd_sc_hd__nand2_2 _136_ (.A(net22),
    .B(_028_),
    .Y(_069_));
 sky130_fd_sc_hd__or2_2 _137_ (.A(\cnt[6] ),
    .B(net19),
    .X(_070_));
 sky130_fd_sc_hd__nand2_2 _138_ (.A(\cnt[6] ),
    .B(net2),
    .Y(_071_));
 sky130_fd_sc_hd__nand2_2 _139_ (.A(_070_),
    .B(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__o21a_2 _140_ (.A1(\cnt[5] ),
    .A2(\cnt[4] ),
    .B1(net2),
    .X(_008_));
 sky130_fd_sc_hd__a31o_2 _141_ (.A1(_056_),
    .A2(_059_),
    .A3(_065_),
    .B1(_008_),
    .X(_009_));
 sky130_fd_sc_hd__xnor2_2 _142_ (.A(_072_),
    .B(_009_),
    .Y(_010_));
 sky130_fd_sc_hd__o21ai_2 _143_ (.A1(net7),
    .A2(_010_),
    .B1(net10),
    .Y(_011_));
 sky130_fd_sc_hd__a21oi_2 _144_ (.A1(_069_),
    .A2(_011_),
    .B1(net6),
    .Y(_006_));
 sky130_fd_sc_hd__nand2_2 _145_ (.A(net20),
    .B(_028_),
    .Y(_012_));
 sky130_fd_sc_hd__a21boi_2 _146_ (.A1(_070_),
    .A2(_009_),
    .B1_N(_071_),
    .Y(_013_));
 sky130_fd_sc_hd__or2_2 _147_ (.A(\cnt[7] ),
    .B(net2),
    .X(_014_));
 sky130_fd_sc_hd__nand2_2 _148_ (.A(\cnt[7] ),
    .B(net2),
    .Y(_015_));
 sky130_fd_sc_hd__a21oi_2 _149_ (.A1(_014_),
    .A2(_015_),
    .B1(_013_),
    .Y(_016_));
 sky130_fd_sc_hd__a31o_2 _150_ (.A1(_013_),
    .A2(_014_),
    .A3(_015_),
    .B1(net7),
    .X(_017_));
 sky130_fd_sc_hd__o21ai_2 _151_ (.A1(_016_),
    .A2(_017_),
    .B1(net10),
    .Y(_018_));
 sky130_fd_sc_hd__a21oi_2 _152_ (.A1(_012_),
    .A2(_018_),
    .B1(net6),
    .Y(_007_));
 sky130_fd_sc_hd__dfxtp_2 _153_ (.CLK(clknet_1_1__leaf_clk),
    .D(_000_),
    .Q(\cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _154_ (.CLK(clknet_1_1__leaf_clk),
    .D(_001_),
    .Q(\cnt[1] ));
 sky130_fd_sc_hd__dfxtp_2 _155_ (.CLK(clknet_1_0__leaf_clk),
    .D(_002_),
    .Q(\cnt[2] ));
 sky130_fd_sc_hd__dfxtp_2 _156_ (.CLK(clknet_1_0__leaf_clk),
    .D(_003_),
    .Q(\cnt[3] ));
 sky130_fd_sc_hd__dfxtp_2 _157_ (.CLK(clknet_1_1__leaf_clk),
    .D(_004_),
    .Q(\cnt[4] ));
 sky130_fd_sc_hd__dfxtp_2 _158_ (.CLK(clknet_1_1__leaf_clk),
    .D(_005_),
    .Q(\cnt[5] ));
 sky130_fd_sc_hd__dfxtp_2 _159_ (.CLK(clknet_1_0__leaf_clk),
    .D(_006_),
    .Q(\cnt[6] ));
 sky130_fd_sc_hd__dfxtp_2 _160_ (.CLK(clknet_1_0__leaf_clk),
    .D(_007_),
    .Q(\cnt[7] ));
 sky130_fd_sc_hd__buf_2 _161_ (.A(\cnt[7] ),
    .X(leds[7]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__buf_2 fanout19 (.A(net2),
    .X(net19));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\cnt[7] ),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\cnt[1] ),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\cnt[6] ),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\cnt[2] ),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\cnt[4] ),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\cnt[5] ),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\cnt[3] ),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(clear),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(down),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(en),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(gray),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(hold),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(rst),
    .X(net6));
 sky130_fd_sc_hd__buf_2 input7 (.A(setall),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(step3),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(tick),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 max_cap10 (.A(_029_),
    .X(net10));
 sky130_fd_sc_hd__buf_4 max_cap11 (.A(_028_),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_4 wire12 (.A(net12),
    .X(leds[6]));
 sky130_fd_sc_hd__clkbuf_4 wire13 (.A(net13),
    .X(leds[5]));
 sky130_fd_sc_hd__clkbuf_4 wire14 (.A(net14),
    .X(leds[4]));
 sky130_fd_sc_hd__clkbuf_4 wire15 (.A(net15),
    .X(leds[3]));
 sky130_fd_sc_hd__clkbuf_4 wire16 (.A(net16),
    .X(leds[2]));
 sky130_fd_sc_hd__clkbuf_4 wire17 (.A(net17),
    .X(leds[1]));
 sky130_fd_sc_hd__clkbuf_4 wire18 (.A(net18),
    .X(leds[0]));
endmodule
