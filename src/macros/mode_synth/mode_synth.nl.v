module mode_synth (auto,
    clk,
    en,
    gate,
    rst,
    spk,
    tick,
    leds,
    note);
 input auto;
 input clk;
 input en;
 input gate;
 input rst;
 output spk;
 input tick;
 output [7:0] leds;
 input [3:0] note;

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
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire net1;
 wire \cnt[0] ;
 wire \cnt[10] ;
 wire \cnt[1] ;
 wire \cnt[2] ;
 wire \cnt[3] ;
 wire \cnt[4] ;
 wire \cnt[5] ;
 wire \cnt[6] ;
 wire \cnt[7] ;
 wire \cnt[8] ;
 wire \cnt[9] ;
 wire net2;
 wire net3;
 wire clknet_0_clk;
 wire net15;
 wire net11;
 wire \melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[0] ;
 wire \melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[1] ;
 wire \melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[2] ;
 wire \melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[3] ;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire \step[0] ;
 wire \step[1] ;
 wire \step[2] ;
 wire \step[3] ;
 wire net9;
 wire net10;
 wire net12;
 wire net13;
 wire net14;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;

 sky130_fd_sc_hd__fill_2 FILLER_0_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_34 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_58 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_68 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_92 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_95 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_99 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_28 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_40 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_45 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_78 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_66 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_98 ();
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_51 ();
 sky130_fd_sc_hd__inv_2 _119_ (.A(net4),
    .Y(_091_));
 sky130_fd_sc_hd__and2b_2 _120_ (.A_N(net1),
    .B(net7),
    .X(_092_));
 sky130_fd_sc_hd__a21oi_4 _121_ (.A1(net1),
    .A2(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[3] ),
    .B1(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__inv_2 _122_ (.A(_093_),
    .Y(net15));
 sky130_fd_sc_hd__nand2b_2 _123_ (.A_N(net8),
    .B(net1),
    .Y(_094_));
 sky130_fd_sc_hd__nand2_2 _124_ (.A(net2),
    .B(net9),
    .Y(_095_));
 sky130_fd_sc_hd__and4_2 _125_ (.A(\step[1] ),
    .B(\step[0] ),
    .C(net2),
    .D(net9),
    .X(_096_));
 sky130_fd_sc_hd__nand2_2 _126_ (.A(\step[2] ),
    .B(_096_),
    .Y(_097_));
 sky130_fd_sc_hd__xor2_2 _127_ (.A(\step[3] ),
    .B(_097_),
    .X(_098_));
 sky130_fd_sc_hd__nor2_2 _128_ (.A(_094_),
    .B(_098_),
    .Y(_019_));
 sky130_fd_sc_hd__or2_2 _129_ (.A(\step[2] ),
    .B(_096_),
    .X(_099_));
 sky130_fd_sc_hd__and3b_2 _130_ (.A_N(_094_),
    .B(_097_),
    .C(_099_),
    .X(_018_));
 sky130_fd_sc_hd__a31o_2 _131_ (.A1(\step[0] ),
    .A2(net2),
    .A3(net9),
    .B1(\step[1] ),
    .X(_100_));
 sky130_fd_sc_hd__nor3b_2 _132_ (.A(_094_),
    .B(_096_),
    .C_N(_100_),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _133_ (.A(net13),
    .Y(_101_));
 sky130_fd_sc_hd__and2_2 _134_ (.A(_018_),
    .B(net13),
    .X(_102_));
 sky130_fd_sc_hd__xnor2_2 _135_ (.A(\step[0] ),
    .B(_095_),
    .Y(_103_));
 sky130_fd_sc_hd__and2b_2 _136_ (.A_N(_094_),
    .B(_103_),
    .X(_016_));
 sky130_fd_sc_hd__nor2_2 _137_ (.A(net12),
    .B(_016_),
    .Y(_104_));
 sky130_fd_sc_hd__o21ai_2 _138_ (.A1(_102_),
    .A2(_104_),
    .B1(_019_),
    .Y(_105_));
 sky130_fd_sc_hd__or2_2 _139_ (.A(_018_),
    .B(net13),
    .X(_106_));
 sky130_fd_sc_hd__nand2b_2 _140_ (.A_N(_019_),
    .B(_106_),
    .Y(_107_));
 sky130_fd_sc_hd__o31a_2 _141_ (.A1(_102_),
    .A2(_103_),
    .A3(_107_),
    .B1(_105_),
    .X(_000_));
 sky130_fd_sc_hd__and2_2 _142_ (.A(net12),
    .B(_016_),
    .X(_108_));
 sky130_fd_sc_hd__nor2_2 _143_ (.A(_104_),
    .B(_108_),
    .Y(_109_));
 sky130_fd_sc_hd__o211a_2 _144_ (.A1(_018_),
    .A2(_101_),
    .B1(_016_),
    .C1(_098_),
    .X(_110_));
 sky130_fd_sc_hd__a31o_2 _145_ (.A1(_019_),
    .A2(_106_),
    .A3(_109_),
    .B1(_110_),
    .X(_001_));
 sky130_fd_sc_hd__o21a_2 _146_ (.A1(net12),
    .A2(_016_),
    .B1(_018_),
    .X(_111_));
 sky130_fd_sc_hd__nor2_2 _147_ (.A(_107_),
    .B(_111_),
    .Y(_003_));
 sky130_fd_sc_hd__mux2_1 _148_ (.A0(_108_),
    .A1(_111_),
    .S(_019_),
    .X(_112_));
 sky130_fd_sc_hd__nor2_2 _149_ (.A(_003_),
    .B(_112_),
    .Y(_002_));
 sky130_fd_sc_hd__mux2_1 _150_ (.A0(net5),
    .A1(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[1] ),
    .S(net1),
    .X(_113_));
 sky130_fd_sc_hd__mux2_1 _151_ (.A0(net6),
    .A1(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[2] ),
    .S(net1),
    .X(_114_));
 sky130_fd_sc_hd__inv_2 _152_ (.A(net17),
    .Y(_115_));
 sky130_fd_sc_hd__or2_2 _153_ (.A(net14),
    .B(net17),
    .X(leds[2]));
 sky130_fd_sc_hd__or2_2 _154_ (.A(_113_),
    .B(net17),
    .X(_116_));
 sky130_fd_sc_hd__nor2_2 _155_ (.A(net14),
    .B(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__inv_2 _156_ (.A(_117_),
    .Y(leds[1]));
 sky130_fd_sc_hd__nand2_2 _157_ (.A(_113_),
    .B(net17),
    .Y(_118_));
 sky130_fd_sc_hd__a21o_2 _158_ (.A1(net18),
    .A2(net17),
    .B1(net14),
    .X(leds[3]));
 sky130_fd_sc_hd__and2_2 _159_ (.A(net14),
    .B(_116_),
    .X(leds[5]));
 sky130_fd_sc_hd__and2_2 _160_ (.A(net14),
    .B(net17),
    .X(leds[6]));
 sky130_fd_sc_hd__nor2_4 _161_ (.A(net19),
    .B(_118_),
    .Y(net11));
 sky130_fd_sc_hd__o21ai_2 _162_ (.A1(net1),
    .A2(net3),
    .B1(net2),
    .Y(_020_));
 sky130_fd_sc_hd__or2_2 _163_ (.A(net8),
    .B(_020_),
    .X(_021_));
 sky130_fd_sc_hd__nand2_2 _164_ (.A(net1),
    .B(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[0] ),
    .Y(_022_));
 sky130_fd_sc_hd__mux2_1 _165_ (.A0(net4),
    .A1(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[0] ),
    .S(net1),
    .X(_023_));
 sky130_fd_sc_hd__and2_2 _166_ (.A(net17),
    .B(net16),
    .X(_024_));
 sky130_fd_sc_hd__nand2_2 _167_ (.A(_114_),
    .B(_023_),
    .Y(_025_));
 sky130_fd_sc_hd__or2_2 _168_ (.A(leds[3]),
    .B(_024_),
    .X(_026_));
 sky130_fd_sc_hd__and2_2 _169_ (.A(net18),
    .B(net16),
    .X(_027_));
 sky130_fd_sc_hd__nand2_2 _170_ (.A(_114_),
    .B(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nand2_2 _171_ (.A(_115_),
    .B(net16),
    .Y(_029_));
 sky130_fd_sc_hd__and2b_2 _172_ (.A_N(net18),
    .B(_023_),
    .X(_030_));
 sky130_fd_sc_hd__o211a_2 _173_ (.A1(net1),
    .A2(_091_),
    .B1(_113_),
    .C1(_022_),
    .X(_031_));
 sky130_fd_sc_hd__xor2_2 _174_ (.A(net18),
    .B(net16),
    .X(_032_));
 sky130_fd_sc_hd__o21a_2 _175_ (.A1(_115_),
    .A2(_032_),
    .B1(_093_),
    .X(_033_));
 sky130_fd_sc_hd__a22oi_2 _176_ (.A1(leds[5]),
    .A2(_028_),
    .B1(_029_),
    .B2(_033_),
    .Y(_034_));
 sky130_fd_sc_hd__or2_2 _177_ (.A(\cnt[8] ),
    .B(_034_),
    .X(_035_));
 sky130_fd_sc_hd__nor2_2 _178_ (.A(_093_),
    .B(_024_),
    .Y(_036_));
 sky130_fd_sc_hd__o22a_2 _179_ (.A1(net17),
    .A2(_027_),
    .B1(_033_),
    .B2(_036_),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _180_ (.A0(leds[6]),
    .A1(net19),
    .S(_031_),
    .X(_038_));
 sky130_fd_sc_hd__o31a_2 _181_ (.A1(\cnt[0] ),
    .A2(_117_),
    .A3(_038_),
    .B1(\cnt[1] ),
    .X(_039_));
 sky130_fd_sc_hd__o21ba_2 _182_ (.A1(net19),
    .A2(_030_),
    .B1_N(_031_),
    .X(_040_));
 sky130_fd_sc_hd__o22ai_2 _183_ (.A1(net14),
    .A2(_028_),
    .B1(_040_),
    .B2(net17),
    .Y(_041_));
 sky130_fd_sc_hd__or4_2 _184_ (.A(\cnt[1] ),
    .B(\cnt[0] ),
    .C(_117_),
    .D(_038_),
    .X(_042_));
 sky130_fd_sc_hd__a221o_2 _185_ (.A1(\cnt[2] ),
    .A2(_037_),
    .B1(_041_),
    .B2(_042_),
    .C1(_039_),
    .X(_043_));
 sky130_fd_sc_hd__o2bb2a_2 _186_ (.A1_N(_116_),
    .A2_N(_118_),
    .B1(_030_),
    .B2(net19),
    .X(_044_));
 sky130_fd_sc_hd__o22a_2 _187_ (.A1(\cnt[2] ),
    .A2(_037_),
    .B1(_044_),
    .B2(\cnt[3] ),
    .X(_045_));
 sky130_fd_sc_hd__a22o_2 _188_ (.A1(\cnt[3] ),
    .A2(_044_),
    .B1(_045_),
    .B2(_043_),
    .X(_046_));
 sky130_fd_sc_hd__and3_2 _189_ (.A(net14),
    .B(net18),
    .C(net16),
    .X(_047_));
 sky130_fd_sc_hd__nor2_2 _190_ (.A(net17),
    .B(_032_),
    .Y(_048_));
 sky130_fd_sc_hd__o21bai_2 _191_ (.A1(_026_),
    .A2(_048_),
    .B1_N(_047_),
    .Y(_049_));
 sky130_fd_sc_hd__a32o_2 _192_ (.A1(\cnt[5] ),
    .A2(leds[2]),
    .A3(_031_),
    .B1(_049_),
    .B2(\cnt[4] ),
    .X(_050_));
 sky130_fd_sc_hd__o32a_2 _193_ (.A1(leds[6]),
    .A2(_030_),
    .A3(_047_),
    .B1(_032_),
    .B2(_115_),
    .X(_051_));
 sky130_fd_sc_hd__a22o_2 _194_ (.A1(net18),
    .A2(_115_),
    .B1(net16),
    .B2(_093_),
    .X(_052_));
 sky130_fd_sc_hd__nor2_2 _195_ (.A(_027_),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__a21o_2 _196_ (.A1(leds[2]),
    .A2(_031_),
    .B1(\cnt[5] ),
    .X(_054_));
 sky130_fd_sc_hd__o221a_2 _197_ (.A1(\cnt[6] ),
    .A2(_051_),
    .B1(_053_),
    .B2(\cnt[7] ),
    .C1(_054_),
    .X(_055_));
 sky130_fd_sc_hd__o2bb2a_2 _198_ (.A1_N(\cnt[6] ),
    .A2_N(_051_),
    .B1(_049_),
    .B2(\cnt[4] ),
    .X(_056_));
 sky130_fd_sc_hd__and3b_2 _199_ (.A_N(_050_),
    .B(_055_),
    .C(_056_),
    .X(_057_));
 sky130_fd_sc_hd__and2_2 _200_ (.A(\cnt[7] ),
    .B(_053_),
    .X(_058_));
 sky130_fd_sc_hd__o211a_2 _201_ (.A1(\cnt[7] ),
    .A2(_053_),
    .B1(_051_),
    .C1(\cnt[6] ),
    .X(_059_));
 sky130_fd_sc_hd__a211o_2 _202_ (.A1(_050_),
    .A2(_055_),
    .B1(_058_),
    .C1(_059_),
    .X(_060_));
 sky130_fd_sc_hd__a21o_2 _203_ (.A1(_046_),
    .A2(_057_),
    .B1(_060_),
    .X(_061_));
 sky130_fd_sc_hd__a31o_2 _204_ (.A1(_116_),
    .A2(_118_),
    .A3(_025_),
    .B1(leds[5]),
    .X(_062_));
 sky130_fd_sc_hd__a22oi_2 _205_ (.A1(\cnt[8] ),
    .A2(_034_),
    .B1(_062_),
    .B2(\cnt[9] ),
    .Y(_063_));
 sky130_fd_sc_hd__or2_2 _206_ (.A(\cnt[10] ),
    .B(_026_),
    .X(_064_));
 sky130_fd_sc_hd__nor2_2 _207_ (.A(\cnt[9] ),
    .B(_062_),
    .Y(_065_));
 sky130_fd_sc_hd__or2_2 _208_ (.A(\cnt[9] ),
    .B(_062_),
    .X(_066_));
 sky130_fd_sc_hd__a2bb2o_2 _209_ (.A1_N(_063_),
    .A2_N(_065_),
    .B1(\cnt[10] ),
    .B2(_026_),
    .X(_067_));
 sky130_fd_sc_hd__a41o_2 _210_ (.A1(_035_),
    .A2(_061_),
    .A3(_063_),
    .A4(_066_),
    .B1(_067_),
    .X(_068_));
 sky130_fd_sc_hd__a21oi_2 _211_ (.A1(_064_),
    .A2(_068_),
    .B1(_021_),
    .Y(_069_));
 sky130_fd_sc_hd__and2b_2 _212_ (.A_N(net21),
    .B(net10),
    .X(_004_));
 sky130_fd_sc_hd__or2_2 _213_ (.A(\cnt[1] ),
    .B(\cnt[0] ),
    .X(_070_));
 sky130_fd_sc_hd__nand2_2 _214_ (.A(net22),
    .B(net21),
    .Y(_071_));
 sky130_fd_sc_hd__and3_2 _215_ (.A(net10),
    .B(_070_),
    .C(_071_),
    .X(_005_));
 sky130_fd_sc_hd__and3_2 _216_ (.A(\cnt[2] ),
    .B(\cnt[1] ),
    .C(\cnt[0] ),
    .X(_072_));
 sky130_fd_sc_hd__a21o_2 _217_ (.A1(\cnt[1] ),
    .A2(\cnt[0] ),
    .B1(net25),
    .X(_073_));
 sky130_fd_sc_hd__and3b_2 _218_ (.A_N(_072_),
    .B(_073_),
    .C(net10),
    .X(_006_));
 sky130_fd_sc_hd__and2_2 _219_ (.A(\cnt[3] ),
    .B(_072_),
    .X(_074_));
 sky130_fd_sc_hd__or2_2 _220_ (.A(\cnt[3] ),
    .B(_072_),
    .X(_075_));
 sky130_fd_sc_hd__and3b_2 _221_ (.A_N(_074_),
    .B(_075_),
    .C(_069_),
    .X(_007_));
 sky130_fd_sc_hd__nand2_2 _222_ (.A(net20),
    .B(_074_),
    .Y(_076_));
 sky130_fd_sc_hd__or2_2 _223_ (.A(\cnt[4] ),
    .B(_074_),
    .X(_077_));
 sky130_fd_sc_hd__and3_2 _224_ (.A(net10),
    .B(_076_),
    .C(_077_),
    .X(_008_));
 sky130_fd_sc_hd__and3_2 _225_ (.A(\cnt[5] ),
    .B(\cnt[4] ),
    .C(_074_),
    .X(_078_));
 sky130_fd_sc_hd__a31o_2 _226_ (.A1(\cnt[3] ),
    .A2(\cnt[4] ),
    .A3(_072_),
    .B1(\cnt[5] ),
    .X(_079_));
 sky130_fd_sc_hd__and3b_2 _227_ (.A_N(_078_),
    .B(_079_),
    .C(net10),
    .X(_009_));
 sky130_fd_sc_hd__and2_2 _228_ (.A(\cnt[6] ),
    .B(_078_),
    .X(_080_));
 sky130_fd_sc_hd__or2_2 _229_ (.A(\cnt[6] ),
    .B(_078_),
    .X(_081_));
 sky130_fd_sc_hd__and3b_2 _230_ (.A_N(_080_),
    .B(_081_),
    .C(net10),
    .X(_010_));
 sky130_fd_sc_hd__nand2_2 _231_ (.A(net23),
    .B(_080_),
    .Y(_082_));
 sky130_fd_sc_hd__or2_2 _232_ (.A(\cnt[7] ),
    .B(_080_),
    .X(_083_));
 sky130_fd_sc_hd__and3_2 _233_ (.A(net10),
    .B(_082_),
    .C(_083_),
    .X(_011_));
 sky130_fd_sc_hd__and3_2 _234_ (.A(\cnt[8] ),
    .B(\cnt[7] ),
    .C(_080_),
    .X(_084_));
 sky130_fd_sc_hd__a31o_2 _235_ (.A1(\cnt[6] ),
    .A2(\cnt[7] ),
    .A3(_078_),
    .B1(\cnt[8] ),
    .X(_085_));
 sky130_fd_sc_hd__and3b_2 _236_ (.A_N(_084_),
    .B(_085_),
    .C(net10),
    .X(_012_));
 sky130_fd_sc_hd__nand2_2 _237_ (.A(\cnt[9] ),
    .B(_084_),
    .Y(_086_));
 sky130_fd_sc_hd__or2_2 _238_ (.A(\cnt[9] ),
    .B(_084_),
    .X(_087_));
 sky130_fd_sc_hd__and3_2 _239_ (.A(net10),
    .B(_086_),
    .C(_087_),
    .X(_013_));
 sky130_fd_sc_hd__xnor2_2 _240_ (.A(\cnt[10] ),
    .B(_086_),
    .Y(_088_));
 sky130_fd_sc_hd__and2_2 _241_ (.A(net10),
    .B(_088_),
    .X(_014_));
 sky130_fd_sc_hd__a31o_2 _242_ (.A1(spk),
    .A2(_064_),
    .A3(_068_),
    .B1(_021_),
    .X(_089_));
 sky130_fd_sc_hd__a21oi_2 _243_ (.A1(_064_),
    .A2(_068_),
    .B1(net24),
    .Y(_090_));
 sky130_fd_sc_hd__nor2_2 _244_ (.A(_089_),
    .B(_090_),
    .Y(_015_));
 sky130_fd_sc_hd__dfxtp_2 _245_ (.CLK(clknet_2_1__leaf_clk),
    .D(_000_),
    .Q(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[0] ));
 sky130_fd_sc_hd__dfxtp_2 _246_ (.CLK(clknet_2_1__leaf_clk),
    .D(_001_),
    .Q(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[1] ));
 sky130_fd_sc_hd__dfxtp_2 _247_ (.CLK(clknet_2_1__leaf_clk),
    .D(_002_),
    .Q(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[2] ));
 sky130_fd_sc_hd__dfxtp_2 _248_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .Q(\melody$func$/home/ubuntu/workspace/4805c48b-b366-441f-a62a-e1b67bae2737/src/mode_synth.v:77$1.$result[3] ));
 sky130_fd_sc_hd__dfxtp_2 _249_ (.CLK(clknet_2_3__leaf_clk),
    .D(_004_),
    .Q(\cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _250_ (.CLK(clknet_2_3__leaf_clk),
    .D(_005_),
    .Q(\cnt[1] ));
 sky130_fd_sc_hd__dfxtp_2 _251_ (.CLK(clknet_2_3__leaf_clk),
    .D(_006_),
    .Q(\cnt[2] ));
 sky130_fd_sc_hd__dfxtp_2 _252_ (.CLK(clknet_2_3__leaf_clk),
    .D(_007_),
    .Q(\cnt[3] ));
 sky130_fd_sc_hd__dfxtp_2 _253_ (.CLK(clknet_2_2__leaf_clk),
    .D(_008_),
    .Q(\cnt[4] ));
 sky130_fd_sc_hd__dfxtp_2 _254_ (.CLK(clknet_2_3__leaf_clk),
    .D(_009_),
    .Q(\cnt[5] ));
 sky130_fd_sc_hd__dfxtp_2 _255_ (.CLK(clknet_2_2__leaf_clk),
    .D(_010_),
    .Q(\cnt[6] ));
 sky130_fd_sc_hd__dfxtp_2 _256_ (.CLK(clknet_2_2__leaf_clk),
    .D(_011_),
    .Q(\cnt[7] ));
 sky130_fd_sc_hd__dfxtp_2 _257_ (.CLK(clknet_2_2__leaf_clk),
    .D(_012_),
    .Q(\cnt[8] ));
 sky130_fd_sc_hd__dfxtp_2 _258_ (.CLK(clknet_2_2__leaf_clk),
    .D(_013_),
    .Q(\cnt[9] ));
 sky130_fd_sc_hd__dfxtp_2 _259_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .Q(\cnt[10] ));
 sky130_fd_sc_hd__dfxtp_2 _260_ (.CLK(clknet_2_0__leaf_clk),
    .D(_015_),
    .Q(spk));
 sky130_fd_sc_hd__dfxtp_2 _261_ (.CLK(clknet_2_0__leaf_clk),
    .D(_016_),
    .Q(\step[0] ));
 sky130_fd_sc_hd__dfxtp_2 _262_ (.CLK(clknet_2_0__leaf_clk),
    .D(_017_),
    .Q(\step[1] ));
 sky130_fd_sc_hd__dfxtp_2 _263_ (.CLK(clknet_2_1__leaf_clk),
    .D(_018_),
    .Q(\step[2] ));
 sky130_fd_sc_hd__dfxtp_2 _264_ (.CLK(clknet_2_0__leaf_clk),
    .D(_019_),
    .Q(\step[3] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__buf_1 fanout10 (.A(_069_),
    .X(net10));
 sky130_fd_sc_hd__buf_2 fanout17 (.A(_114_),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\cnt[4] ),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\cnt[0] ),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\cnt[1] ),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\cnt[7] ),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(spk),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\cnt[2] ),
    .X(net25));
 sky130_fd_sc_hd__buf_2 input1 (.A(auto),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(en),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(gate),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(note[0]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(note[1]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(note[2]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(note[3]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(rst),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(tick),
    .X(net9));
 sky130_fd_sc_hd__buf_1 max_cap12 (.A(net13),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_2 max_cap14 (.A(net15),
    .X(net14));
 sky130_fd_sc_hd__buf_4 max_cap15 (.A(net15),
    .X(leds[4]));
 sky130_fd_sc_hd__clkbuf_2 max_cap16 (.A(_023_),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 max_cap18 (.A(_113_),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_2 max_cap19 (.A(_093_),
    .X(net19));
 sky130_fd_sc_hd__conb_1 mode_synth (.HI(net));
 sky130_fd_sc_hd__clkbuf_4 wire11 (.A(net11),
    .X(leds[7]));
 sky130_fd_sc_hd__buf_1 wire13 (.A(_017_),
    .X(net13));
 assign leds[0] = net;
endmodule
