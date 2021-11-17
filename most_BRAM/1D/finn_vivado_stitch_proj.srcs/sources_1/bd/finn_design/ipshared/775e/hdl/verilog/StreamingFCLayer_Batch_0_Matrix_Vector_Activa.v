// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingFCLayer_Batch_0_Matrix_Vector_Activa (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V_V_TDATA,
        in_V_V_TVALID,
        in_V_V_TREADY,
        out_V_V_TDATA,
        out_V_V_TVALID,
        out_V_V_TREADY,
        weights_m_weights_V_address0,
        weights_m_weights_V_ce0,
        weights_m_weights_V_q0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] in_V_V_TDATA;
input   in_V_V_TVALID;
output   in_V_V_TREADY;
output  [7:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;
output  [7:0] weights_m_weights_V_address0;
output   weights_m_weights_V_ce0;
input  [1:0] weights_m_weights_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_TREADY;
reg out_V_V_TVALID;
reg weights_m_weights_V_ce0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] threshs_m_thresholds_2_address0;
reg    threshs_m_thresholds_2_ce0;
wire   [9:0] threshs_m_thresholds_2_q0;
wire   [3:0] threshs_m_thresholds_1_address0;
reg    threshs_m_thresholds_1_ce0;
wire   [9:0] threshs_m_thresholds_1_q0;
wire   [3:0] threshs_m_thresholds_address0;
reg    threshs_m_thresholds_ce0;
wire   [9:0] threshs_m_thresholds_q0;
reg    in_V_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln122_fu_234_p2;
wire   [0:0] icmp_ln125_fu_249_p2;
reg    out_V_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln160_reg_946;
reg   [16:0] i_0_reg_199;
reg    ap_predicate_op47_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [16:0] i_fu_240_p2;
wire   [7:0] inElem_V_fu_289_p11;
wire   [0:0] icmp_ln137_fu_626_p2;
reg   [0:0] icmp_ln137_reg_936;
wire   [0:0] icmp_ln160_fu_649_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [7:0] ap_phi_reg_pp0_iter0_p_Val2_s_reg_210;
reg   [7:0] ap_phi_reg_pp0_iter1_p_Val2_s_reg_210;
wire   [63:0] zext_ln137_fu_632_p1;
wire   [63:0] zext_ln186_fu_668_p1;
reg   [12:0] accu_V_0_0_0_fu_82;
wire   [12:0] add_ln700_1_fu_741_p2;
reg   [31:0] tile_assign_fu_86;
wire   [31:0] tile_fu_637_p2;
wire   [31:0] tile_1_fu_695_p3;
reg   [31:0] sf_1_fu_90;
wire   [31:0] sf_fu_643_p2;
reg   [31:0] nf_assign_fu_94;
wire   [31:0] nf_1_fu_687_p3;
reg   [7:0] inputBuf_8_V_1_fu_98;
wire   [7:0] inputBuf_8_V_19_fu_567_p3;
reg   [7:0] inputBuf_8_V_2_fu_102;
wire   [7:0] inputBuf_8_V_18_fu_559_p3;
reg   [7:0] inputBuf_8_V_4_fu_106;
wire   [7:0] inputBuf_8_V_16_fu_543_p3;
reg   [7:0] inputBuf_8_V_6_fu_110;
wire   [7:0] inputBuf_8_V_15_fu_527_p3;
reg   [7:0] inputBuf_8_V_7_fu_114;
wire   [7:0] inputBuf_8_V_14_fu_503_p3;
reg   [7:0] inputBuf_8_V_5_fu_118;
wire   [7:0] inputBuf_8_V_13_fu_487_p3;
reg   [7:0] inputBuf_8_V_3_fu_122;
wire   [7:0] inputBuf_8_V_12_fu_463_p3;
reg   [7:0] inputBuf_8_V_8_fu_126;
wire   [7:0] inputBuf_8_V_11_fu_439_p3;
reg   [7:0] inputBuf_8_V_9_fu_130;
wire   [7:0] inputBuf_8_V_fu_407_p3;
reg    ap_block_pp0_stage0_01001;
wire   [3:0] inElem_V_fu_289_p10;
wire   [3:0] trunc_ln321_fu_313_p1;
wire   [0:0] icmp_ln321_7_fu_359_p2;
wire   [0:0] icmp_ln321_6_fu_353_p2;
wire   [0:0] icmp_ln321_5_fu_347_p2;
wire   [0:0] icmp_ln321_4_fu_341_p2;
wire   [0:0] icmp_ln321_3_fu_335_p2;
wire   [0:0] icmp_ln321_2_fu_329_p2;
wire   [0:0] icmp_ln321_1_fu_323_p2;
wire   [0:0] icmp_ln321_fu_317_p2;
wire   [0:0] or_ln321_fu_365_p2;
wire   [0:0] or_ln321_1_fu_371_p2;
wire   [0:0] or_ln321_2_fu_377_p2;
wire   [0:0] or_ln321_3_fu_383_p2;
wire   [0:0] or_ln321_4_fu_389_p2;
wire   [0:0] or_ln321_5_fu_395_p2;
wire   [0:0] or_ln321_6_fu_401_p2;
wire   [7:0] select_ln321_fu_415_p3;
wire   [7:0] select_ln321_1_fu_423_p3;
wire   [7:0] select_ln321_2_fu_431_p3;
wire   [7:0] select_ln321_4_fu_447_p3;
wire   [7:0] select_ln321_5_fu_455_p3;
wire   [7:0] select_ln321_7_fu_471_p3;
wire   [7:0] select_ln321_8_fu_479_p3;
wire   [7:0] select_ln321_10_fu_495_p3;
wire   [7:0] select_ln321_12_fu_511_p3;
wire   [7:0] select_ln321_13_fu_519_p3;
wire   [7:0] select_ln321_15_fu_535_p3;
wire   [7:0] inputBuf_8_V_17_fu_551_p3;
wire   [31:0] nf_fu_675_p2;
wire   [0:0] icmp_ln173_fu_681_p2;
wire   [7:0] ret_V_fu_731_p0;
wire  signed [9:0] ret_V_fu_731_p2;
wire   [12:0] select_ln137_fu_716_p3;
wire  signed [12:0] sext_ln700_fu_737_p1;
wire  signed [12:0] sext_ln186_fu_752_p1;
wire   [0:0] icmp_ln899_fu_756_p2;
wire   [0:0] xor_ln899_fu_762_p2;
wire  signed [12:0] sext_ln186_1_fu_772_p1;
wire   [0:0] icmp_ln899_1_fu_776_p2;
wire   [0:0] xor_ln899_1_fu_782_p2;
wire   [12:0] zext_ln186_1_fu_792_p1;
wire   [0:0] icmp_ln899_2_fu_796_p2;
wire   [0:0] xor_ln899_2_fu_802_p2;
wire   [1:0] zext_ln700_1_fu_788_p1;
wire   [1:0] zext_ln700_2_fu_808_p1;
wire   [1:0] add_ln700_fu_812_p2;
wire   [1:0] zext_ln700_fu_768_p1;
wire   [1:0] tmp_V_fu_818_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [9:0] ret_V_fu_731_p00;
reg    ap_condition_110;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

StreamingFCLayer_Batch_0_Matrix_Vector_Actbkb #(
    .DataWidth( 10 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
threshs_m_thresholds_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(threshs_m_thresholds_2_address0),
    .ce0(threshs_m_thresholds_2_ce0),
    .q0(threshs_m_thresholds_2_q0)
);

StreamingFCLayer_Batch_0_Matrix_Vector_Actcud #(
    .DataWidth( 10 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
threshs_m_thresholds_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(threshs_m_thresholds_1_address0),
    .ce0(threshs_m_thresholds_1_ce0),
    .q0(threshs_m_thresholds_1_q0)
);

StreamingFCLayer_Batch_0_Matrix_Vector_ActdEe #(
    .DataWidth( 10 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
threshs_m_thresholds_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(threshs_m_thresholds_address0),
    .ce0(threshs_m_thresholds_ce0),
    .q0(threshs_m_thresholds_q0)
);

StreamingFCLayer_Batch_0_StreamingFCLayer_eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
StreamingFCLayer_eOg_U1(
    .din0(inputBuf_8_V_1_fu_98),
    .din1(inputBuf_8_V_2_fu_102),
    .din2(inputBuf_8_V_4_fu_106),
    .din3(inputBuf_8_V_6_fu_110),
    .din4(inputBuf_8_V_7_fu_114),
    .din5(inputBuf_8_V_5_fu_118),
    .din6(inputBuf_8_V_3_fu_122),
    .din7(inputBuf_8_V_8_fu_126),
    .din8(inputBuf_8_V_9_fu_130),
    .din9(inElem_V_fu_289_p10),
    .dout(inElem_V_fu_289_p11)
);

StreamingFCLayer_Batch_0_StreamingFCLayer_fYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 2 ),
    .dout_WIDTH( 10 ))
StreamingFCLayer_fYi_U2(
    .din0(ret_V_fu_731_p0),
    .din1(weights_m_weights_V_q0),
    .dout(ret_V_fu_731_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_110)) begin
        if (((icmp_ln125_fu_249_p2 == 1'd0) & (icmp_ln122_fu_234_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_p_Val2_s_reg_210 <= inElem_V_fu_289_p11;
        end else if (((icmp_ln125_fu_249_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_p_Val2_s_reg_210 <= in_V_V_TDATA;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_p_Val2_s_reg_210 <= ap_phi_reg_pp0_iter0_p_Val2_s_reg_210;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_199 <= i_fu_240_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_199 <= 17'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln160_fu_649_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        nf_assign_fu_94 <= nf_1_fu_687_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        nf_assign_fu_94 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln160_fu_649_p2 == 1'd0) & (icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sf_1_fu_90 <= sf_fu_643_p2;
    end else if ((((icmp_ln160_fu_649_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sf_1_fu_90 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln160_fu_649_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tile_assign_fu_86 <= tile_1_fu_695_p3;
    end else if (((icmp_ln160_fu_649_p2 == 1'd0) & (icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tile_assign_fu_86 <= tile_fu_637_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tile_assign_fu_86 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        accu_V_0_0_0_fu_82 <= add_ln700_1_fu_741_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_234_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln137_reg_936 <= icmp_ln137_fu_626_p2;
        icmp_ln160_reg_946 <= icmp_ln160_fu_649_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln125_fu_249_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        inputBuf_8_V_1_fu_98 <= inputBuf_8_V_19_fu_567_p3;
        inputBuf_8_V_2_fu_102 <= inputBuf_8_V_18_fu_559_p3;
        inputBuf_8_V_3_fu_122 <= inputBuf_8_V_12_fu_463_p3;
        inputBuf_8_V_4_fu_106 <= inputBuf_8_V_16_fu_543_p3;
        inputBuf_8_V_5_fu_118 <= inputBuf_8_V_13_fu_487_p3;
        inputBuf_8_V_6_fu_110 <= inputBuf_8_V_15_fu_527_p3;
        inputBuf_8_V_7_fu_114 <= inputBuf_8_V_14_fu_503_p3;
        inputBuf_8_V_8_fu_126 <= inputBuf_8_V_11_fu_439_p3;
        inputBuf_8_V_9_fu_130 <= inputBuf_8_V_fu_407_p3;
    end
end

always @ (*) begin
    if ((icmp_ln122_fu_234_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln125_fu_249_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_V_TDATA_blk_n = in_V_V_TVALID;
    end else begin
        in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op47_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in_V_V_TREADY = 1'b1;
    end else begin
        in_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln160_reg_946 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_V_TDATA_blk_n = out_V_V_TREADY;
    end else begin
        out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln160_reg_946 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_V_V_TVALID = 1'b1;
    end else begin
        out_V_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        threshs_m_thresholds_1_ce0 = 1'b1;
    end else begin
        threshs_m_thresholds_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        threshs_m_thresholds_2_ce0 = 1'b1;
    end else begin
        threshs_m_thresholds_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        threshs_m_thresholds_ce0 = 1'b1;
    end else begin
        threshs_m_thresholds_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights_m_weights_V_ce0 = 1'b1;
    end else begin
        weights_m_weights_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln122_fu_234_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln122_fu_234_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln700_1_fu_741_p2 = ($signed(select_ln137_fu_716_p3) + $signed(sext_ln700_fu_737_p1));

assign add_ln700_fu_812_p2 = (zext_ln700_1_fu_788_p1 + zext_ln700_2_fu_808_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op47_read_state2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op47_read_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op47_read_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((in_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln160_reg_946 == 1'd1) & (out_V_V_TREADY == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_110 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_p_Val2_s_reg_210 = 'bx;

always @ (*) begin
    ap_predicate_op47_read_state2 = ((icmp_ln125_fu_249_p2 == 1'd1) & (icmp_ln122_fu_234_p2 == 1'd0));
end

assign i_fu_240_p2 = (i_0_reg_199 + 17'd1);

assign icmp_ln122_fu_234_p2 = ((i_0_reg_199 == 17'd111744) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_249_p2 = ((nf_assign_fu_94 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln137_fu_626_p2 = ((sf_1_fu_90 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln160_fu_649_p2 = ((sf_fu_643_p2 == 32'd9) ? 1'b1 : 1'b0);

assign icmp_ln173_fu_681_p2 = ((nf_fu_675_p2 == 32'd16) ? 1'b1 : 1'b0);

assign icmp_ln321_1_fu_323_p2 = ((trunc_ln321_fu_313_p1 == 4'd6) ? 1'b1 : 1'b0);

assign icmp_ln321_2_fu_329_p2 = ((trunc_ln321_fu_313_p1 == 4'd5) ? 1'b1 : 1'b0);

assign icmp_ln321_3_fu_335_p2 = ((trunc_ln321_fu_313_p1 == 4'd4) ? 1'b1 : 1'b0);

assign icmp_ln321_4_fu_341_p2 = ((trunc_ln321_fu_313_p1 == 4'd3) ? 1'b1 : 1'b0);

assign icmp_ln321_5_fu_347_p2 = ((trunc_ln321_fu_313_p1 == 4'd2) ? 1'b1 : 1'b0);

assign icmp_ln321_6_fu_353_p2 = ((trunc_ln321_fu_313_p1 == 4'd1) ? 1'b1 : 1'b0);

assign icmp_ln321_7_fu_359_p2 = ((trunc_ln321_fu_313_p1 == 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln321_fu_317_p2 = ((trunc_ln321_fu_313_p1 == 4'd7) ? 1'b1 : 1'b0);

assign icmp_ln899_1_fu_776_p2 = (($signed(add_ln700_1_fu_741_p2) < $signed(sext_ln186_1_fu_772_p1)) ? 1'b1 : 1'b0);

assign icmp_ln899_2_fu_796_p2 = (($signed(add_ln700_1_fu_741_p2) < $signed(zext_ln186_1_fu_792_p1)) ? 1'b1 : 1'b0);

assign icmp_ln899_fu_756_p2 = (($signed(add_ln700_1_fu_741_p2) < $signed(sext_ln186_fu_752_p1)) ? 1'b1 : 1'b0);

assign inElem_V_fu_289_p10 = sf_1_fu_90[3:0];

assign inputBuf_8_V_11_fu_439_p3 = ((or_ln321_6_fu_401_p2[0:0] === 1'b1) ? select_ln321_2_fu_431_p3 : inputBuf_8_V_8_fu_126);

assign inputBuf_8_V_12_fu_463_p3 = ((or_ln321_4_fu_389_p2[0:0] === 1'b1) ? inputBuf_8_V_3_fu_122 : select_ln321_5_fu_455_p3);

assign inputBuf_8_V_13_fu_487_p3 = ((or_ln321_4_fu_389_p2[0:0] === 1'b1) ? inputBuf_8_V_5_fu_118 : select_ln321_8_fu_479_p3);

assign inputBuf_8_V_14_fu_503_p3 = ((or_ln321_4_fu_389_p2[0:0] === 1'b1) ? inputBuf_8_V_7_fu_114 : select_ln321_10_fu_495_p3);

assign inputBuf_8_V_15_fu_527_p3 = ((or_ln321_4_fu_389_p2[0:0] === 1'b1) ? select_ln321_13_fu_519_p3 : inputBuf_8_V_6_fu_110);

assign inputBuf_8_V_16_fu_543_p3 = ((or_ln321_fu_365_p2[0:0] === 1'b1) ? inputBuf_8_V_4_fu_106 : select_ln321_15_fu_535_p3);

assign inputBuf_8_V_17_fu_551_p3 = ((icmp_ln321_6_fu_353_p2[0:0] === 1'b1) ? in_V_V_TDATA : inputBuf_8_V_2_fu_102);

assign inputBuf_8_V_18_fu_559_p3 = ((icmp_ln321_7_fu_359_p2[0:0] === 1'b1) ? inputBuf_8_V_2_fu_102 : inputBuf_8_V_17_fu_551_p3);

assign inputBuf_8_V_19_fu_567_p3 = ((icmp_ln321_7_fu_359_p2[0:0] === 1'b1) ? in_V_V_TDATA : inputBuf_8_V_1_fu_98);

assign inputBuf_8_V_fu_407_p3 = ((or_ln321_6_fu_401_p2[0:0] === 1'b1) ? inputBuf_8_V_9_fu_130 : in_V_V_TDATA);

assign nf_1_fu_687_p3 = ((icmp_ln173_fu_681_p2[0:0] === 1'b1) ? 32'd0 : nf_fu_675_p2);

assign nf_fu_675_p2 = (nf_assign_fu_94 + 32'd1);

assign or_ln321_1_fu_371_p2 = (icmp_ln321_5_fu_347_p2 | icmp_ln321_4_fu_341_p2);

assign or_ln321_2_fu_377_p2 = (icmp_ln321_3_fu_335_p2 | icmp_ln321_2_fu_329_p2);

assign or_ln321_3_fu_383_p2 = (icmp_ln321_fu_317_p2 | icmp_ln321_1_fu_323_p2);

assign or_ln321_4_fu_389_p2 = (or_ln321_fu_365_p2 | or_ln321_1_fu_371_p2);

assign or_ln321_5_fu_395_p2 = (or_ln321_3_fu_383_p2 | or_ln321_2_fu_377_p2);

assign or_ln321_6_fu_401_p2 = (or_ln321_5_fu_395_p2 | or_ln321_4_fu_389_p2);

assign or_ln321_fu_365_p2 = (icmp_ln321_7_fu_359_p2 | icmp_ln321_6_fu_353_p2);

assign out_V_V_TDATA = tmp_V_fu_818_p2;

assign ret_V_fu_731_p0 = ret_V_fu_731_p00;

assign ret_V_fu_731_p00 = ap_phi_reg_pp0_iter1_p_Val2_s_reg_210;

assign select_ln137_fu_716_p3 = ((icmp_ln137_reg_936[0:0] === 1'b1) ? 13'd0 : accu_V_0_0_0_fu_82);

assign select_ln321_10_fu_495_p3 = ((icmp_ln321_3_fu_335_p2[0:0] === 1'b1) ? in_V_V_TDATA : inputBuf_8_V_7_fu_114);

assign select_ln321_12_fu_511_p3 = ((icmp_ln321_5_fu_347_p2[0:0] === 1'b1) ? inputBuf_8_V_6_fu_110 : in_V_V_TDATA);

assign select_ln321_13_fu_519_p3 = ((or_ln321_fu_365_p2[0:0] === 1'b1) ? inputBuf_8_V_6_fu_110 : select_ln321_12_fu_511_p3);

assign select_ln321_15_fu_535_p3 = ((icmp_ln321_5_fu_347_p2[0:0] === 1'b1) ? in_V_V_TDATA : inputBuf_8_V_4_fu_106);

assign select_ln321_1_fu_423_p3 = ((or_ln321_2_fu_377_p2[0:0] === 1'b1) ? inputBuf_8_V_8_fu_126 : select_ln321_fu_415_p3);

assign select_ln321_2_fu_431_p3 = ((or_ln321_4_fu_389_p2[0:0] === 1'b1) ? inputBuf_8_V_8_fu_126 : select_ln321_1_fu_423_p3);

assign select_ln321_4_fu_447_p3 = ((icmp_ln321_1_fu_323_p2[0:0] === 1'b1) ? in_V_V_TDATA : inputBuf_8_V_3_fu_122);

assign select_ln321_5_fu_455_p3 = ((or_ln321_2_fu_377_p2[0:0] === 1'b1) ? inputBuf_8_V_3_fu_122 : select_ln321_4_fu_447_p3);

assign select_ln321_7_fu_471_p3 = ((icmp_ln321_3_fu_335_p2[0:0] === 1'b1) ? inputBuf_8_V_5_fu_118 : in_V_V_TDATA);

assign select_ln321_8_fu_479_p3 = ((or_ln321_2_fu_377_p2[0:0] === 1'b1) ? select_ln321_7_fu_471_p3 : inputBuf_8_V_5_fu_118);

assign select_ln321_fu_415_p3 = ((icmp_ln321_1_fu_323_p2[0:0] === 1'b1) ? inputBuf_8_V_8_fu_126 : in_V_V_TDATA);

assign sext_ln186_1_fu_772_p1 = $signed(threshs_m_thresholds_1_q0);

assign sext_ln186_fu_752_p1 = $signed(threshs_m_thresholds_2_q0);

assign sext_ln700_fu_737_p1 = ret_V_fu_731_p2;

assign sf_fu_643_p2 = (sf_1_fu_90 + 32'd1);

assign threshs_m_thresholds_1_address0 = zext_ln186_fu_668_p1;

assign threshs_m_thresholds_2_address0 = zext_ln186_fu_668_p1;

assign threshs_m_thresholds_address0 = zext_ln186_fu_668_p1;

assign tile_1_fu_695_p3 = ((icmp_ln173_fu_681_p2[0:0] === 1'b1) ? 32'd0 : tile_fu_637_p2);

assign tile_fu_637_p2 = (tile_assign_fu_86 + 32'd1);

assign tmp_V_fu_818_p2 = (add_ln700_fu_812_p2 + zext_ln700_fu_768_p1);

assign trunc_ln321_fu_313_p1 = sf_1_fu_90[3:0];

assign weights_m_weights_V_address0 = zext_ln137_fu_632_p1;

assign xor_ln899_1_fu_782_p2 = (icmp_ln899_1_fu_776_p2 ^ 1'd1);

assign xor_ln899_2_fu_802_p2 = (icmp_ln899_2_fu_796_p2 ^ 1'd1);

assign xor_ln899_fu_762_p2 = (icmp_ln899_fu_756_p2 ^ 1'd1);

assign zext_ln137_fu_632_p1 = tile_assign_fu_86;

assign zext_ln186_1_fu_792_p1 = threshs_m_thresholds_q0;

assign zext_ln186_fu_668_p1 = nf_assign_fu_94;

assign zext_ln700_1_fu_788_p1 = xor_ln899_1_fu_782_p2;

assign zext_ln700_2_fu_808_p1 = xor_ln899_2_fu_802_p2;

assign zext_ln700_fu_768_p1 = xor_ln899_fu_762_p2;

endmodule //StreamingFCLayer_Batch_0_Matrix_Vector_Activa