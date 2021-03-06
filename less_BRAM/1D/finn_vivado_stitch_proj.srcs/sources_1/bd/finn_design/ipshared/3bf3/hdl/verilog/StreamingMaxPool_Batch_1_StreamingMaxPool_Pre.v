// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingMaxPool_Batch_1_StreamingMaxPool_Pre (
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
        out_V_V_TREADY
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
input  [39:0] in_V_V_TDATA;
input   in_V_V_TVALID;
output   in_V_V_TREADY;
output  [39:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_TREADY;
reg out_V_V_TVALID;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_V_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln254_fu_381_p2;
reg    out_V_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln256_1_reg_1212;
reg   [7:0] indvar_flatten_reg_139;
reg   [1:0] buf_V_19_1_reg_150;
reg   [1:0] buf_V_18_1_reg_161;
reg   [1:0] buf_V_17_1_reg_172;
reg   [1:0] buf_V_16_1_reg_183;
reg   [1:0] buf_V_15_1_reg_194;
reg   [1:0] buf_V_14_1_reg_205;
reg   [1:0] buf_V_13_1_reg_216;
reg   [1:0] buf_V_12_1_reg_227;
reg   [1:0] buf_V_11_1_reg_238;
reg   [1:0] buf_V_10_1_reg_249;
reg   [1:0] buf_V_9_1_reg_260;
reg   [1:0] buf_V_8_1_reg_271;
reg   [1:0] buf_V_7_1_reg_282;
reg   [1:0] buf_V_6_1_reg_293;
reg   [1:0] buf_V_5_1_reg_304;
reg   [1:0] buf_V_4_1_reg_315;
reg   [1:0] buf_V_3_1_reg_326;
reg   [1:0] buf_V_2_1_reg_337;
reg   [1:0] buf_V_1_1_reg_348;
reg   [1:0] buf_V_0_1_reg_359;
reg   [2:0] kx_0_reg_370;
reg   [0:0] icmp_ln254_reg_1078;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] add_ln254_fu_387_p2;
wire   [1:0] select_ln265_fu_569_p3;
reg   [1:0] select_ln265_reg_1087;
wire   [1:0] select_ln265_1_fu_593_p3;
reg   [1:0] select_ln265_1_reg_1093;
wire   [1:0] select_ln265_2_fu_617_p3;
reg   [1:0] select_ln265_2_reg_1099;
wire   [1:0] select_ln265_3_fu_641_p3;
reg   [1:0] select_ln265_3_reg_1105;
wire   [1:0] select_ln265_4_fu_665_p3;
reg   [1:0] select_ln265_4_reg_1111;
wire   [1:0] select_ln265_5_fu_689_p3;
reg   [1:0] select_ln265_5_reg_1117;
wire   [1:0] select_ln265_6_fu_713_p3;
reg   [1:0] select_ln265_6_reg_1123;
wire   [1:0] select_ln265_7_fu_737_p3;
reg   [1:0] select_ln265_7_reg_1129;
wire   [1:0] select_ln265_8_fu_761_p3;
reg   [1:0] select_ln265_8_reg_1135;
wire   [1:0] select_ln265_9_fu_785_p3;
reg   [1:0] select_ln265_9_reg_1141;
wire   [1:0] select_ln265_10_fu_809_p3;
reg   [1:0] select_ln265_10_reg_1147;
wire   [1:0] select_ln265_11_fu_833_p3;
reg   [1:0] select_ln265_11_reg_1153;
wire   [1:0] select_ln265_12_fu_857_p3;
reg   [1:0] select_ln265_12_reg_1159;
wire   [1:0] select_ln265_13_fu_881_p3;
reg   [1:0] select_ln265_13_reg_1165;
wire   [1:0] select_ln265_14_fu_905_p3;
reg   [1:0] select_ln265_14_reg_1171;
wire   [1:0] select_ln265_15_fu_929_p3;
reg   [1:0] select_ln265_15_reg_1177;
wire   [1:0] select_ln265_16_fu_953_p3;
reg   [1:0] select_ln265_16_reg_1183;
wire   [1:0] select_ln265_17_fu_977_p3;
reg   [1:0] select_ln265_17_reg_1189;
wire   [1:0] select_ln265_18_fu_1001_p3;
reg   [1:0] select_ln265_18_reg_1195;
wire   [1:0] select_ln265_19_fu_1025_p3;
reg   [1:0] select_ln265_19_reg_1201;
wire   [2:0] kx_fu_1039_p3;
reg   [2:0] kx_reg_1207;
wire   [0:0] icmp_ln256_1_fu_1047_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [1:0] ap_phi_mux_buf_V_19_1_phi_fu_154_p4;
reg   [1:0] ap_phi_mux_buf_V_18_1_phi_fu_165_p4;
reg   [1:0] ap_phi_mux_buf_V_17_1_phi_fu_176_p4;
reg   [1:0] ap_phi_mux_buf_V_16_1_phi_fu_187_p4;
reg   [1:0] ap_phi_mux_buf_V_15_1_phi_fu_198_p4;
reg   [1:0] ap_phi_mux_buf_V_14_1_phi_fu_209_p4;
reg   [1:0] ap_phi_mux_buf_V_13_1_phi_fu_220_p4;
reg   [1:0] ap_phi_mux_buf_V_12_1_phi_fu_231_p4;
reg   [1:0] ap_phi_mux_buf_V_11_1_phi_fu_242_p4;
reg   [1:0] ap_phi_mux_buf_V_10_1_phi_fu_253_p4;
reg   [1:0] ap_phi_mux_buf_V_9_1_phi_fu_264_p4;
reg   [1:0] ap_phi_mux_buf_V_8_1_phi_fu_275_p4;
reg   [1:0] ap_phi_mux_buf_V_7_1_phi_fu_286_p4;
reg   [1:0] ap_phi_mux_buf_V_6_1_phi_fu_297_p4;
reg   [1:0] ap_phi_mux_buf_V_5_1_phi_fu_308_p4;
reg   [1:0] ap_phi_mux_buf_V_4_1_phi_fu_319_p4;
reg   [1:0] ap_phi_mux_buf_V_3_1_phi_fu_330_p4;
reg   [1:0] ap_phi_mux_buf_V_2_1_phi_fu_341_p4;
reg   [1:0] ap_phi_mux_buf_V_1_1_phi_fu_352_p4;
reg   [1:0] ap_phi_mux_buf_V_0_1_phi_fu_363_p4;
reg   [2:0] ap_phi_mux_kx_0_phi_fu_374_p4;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln256_fu_393_p2;
wire   [1:0] buf_0_V_fu_559_p1;
wire   [1:0] select_ln256_19_fu_551_p3;
wire   [0:0] icmp_ln895_fu_563_p2;
wire   [1:0] buf_1_V_fu_577_p4;
wire   [1:0] select_ln256_18_fu_543_p3;
wire   [0:0] icmp_ln895_1_fu_587_p2;
wire   [1:0] buf_2_V_fu_601_p4;
wire   [1:0] select_ln256_17_fu_535_p3;
wire   [0:0] icmp_ln895_2_fu_611_p2;
wire   [1:0] buf_3_V_fu_625_p4;
wire   [1:0] select_ln256_16_fu_527_p3;
wire   [0:0] icmp_ln895_3_fu_635_p2;
wire   [1:0] buf_4_V_fu_649_p4;
wire   [1:0] select_ln256_15_fu_519_p3;
wire   [0:0] icmp_ln895_4_fu_659_p2;
wire   [1:0] buf_5_V_fu_673_p4;
wire   [1:0] select_ln256_14_fu_511_p3;
wire   [0:0] icmp_ln895_5_fu_683_p2;
wire   [1:0] buf_6_V_fu_697_p4;
wire   [1:0] select_ln256_13_fu_503_p3;
wire   [0:0] icmp_ln895_6_fu_707_p2;
wire   [1:0] buf_7_V_fu_721_p4;
wire   [1:0] select_ln256_12_fu_495_p3;
wire   [0:0] icmp_ln895_7_fu_731_p2;
wire   [1:0] buf_8_V_fu_745_p4;
wire   [1:0] select_ln256_11_fu_487_p3;
wire   [0:0] icmp_ln895_8_fu_755_p2;
wire   [1:0] buf_9_V_fu_769_p4;
wire   [1:0] select_ln256_10_fu_479_p3;
wire   [0:0] icmp_ln895_9_fu_779_p2;
wire   [1:0] buf_10_V_fu_793_p4;
wire   [1:0] select_ln256_9_fu_471_p3;
wire   [0:0] icmp_ln895_10_fu_803_p2;
wire   [1:0] buf_11_V_fu_817_p4;
wire   [1:0] select_ln256_8_fu_463_p3;
wire   [0:0] icmp_ln895_11_fu_827_p2;
wire   [1:0] buf_12_V_fu_841_p4;
wire   [1:0] select_ln256_7_fu_455_p3;
wire   [0:0] icmp_ln895_12_fu_851_p2;
wire   [1:0] buf_13_V_fu_865_p4;
wire   [1:0] select_ln256_6_fu_447_p3;
wire   [0:0] icmp_ln895_13_fu_875_p2;
wire   [1:0] buf_14_V_fu_889_p4;
wire   [1:0] select_ln256_5_fu_439_p3;
wire   [0:0] icmp_ln895_14_fu_899_p2;
wire   [1:0] buf_15_V_fu_913_p4;
wire   [1:0] select_ln256_4_fu_431_p3;
wire   [0:0] icmp_ln895_15_fu_923_p2;
wire   [1:0] buf_16_V_fu_937_p4;
wire   [1:0] select_ln256_3_fu_423_p3;
wire   [0:0] icmp_ln895_16_fu_947_p2;
wire   [1:0] buf_17_V_fu_961_p4;
wire   [1:0] select_ln256_2_fu_415_p3;
wire   [0:0] icmp_ln895_17_fu_971_p2;
wire   [1:0] buf_18_V_fu_985_p4;
wire   [1:0] select_ln256_1_fu_407_p3;
wire   [0:0] icmp_ln895_18_fu_995_p2;
wire   [1:0] buf_19_V_fu_1009_p4;
wire   [1:0] select_ln256_fu_399_p3;
wire   [0:0] icmp_ln895_19_fu_1019_p2;
wire   [2:0] add_ln256_fu_1033_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

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
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_0_1_reg_359 <= select_ln265_reg_1087;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_0_1_reg_359 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_10_1_reg_249 <= select_ln265_10_reg_1147;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_10_1_reg_249 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_11_1_reg_238 <= select_ln265_11_reg_1153;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_11_1_reg_238 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_12_1_reg_227 <= select_ln265_12_reg_1159;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_12_1_reg_227 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_13_1_reg_216 <= select_ln265_13_reg_1165;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_13_1_reg_216 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_14_1_reg_205 <= select_ln265_14_reg_1171;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_14_1_reg_205 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_15_1_reg_194 <= select_ln265_15_reg_1177;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_15_1_reg_194 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_16_1_reg_183 <= select_ln265_16_reg_1183;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_16_1_reg_183 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_17_1_reg_172 <= select_ln265_17_reg_1189;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_17_1_reg_172 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_18_1_reg_161 <= select_ln265_18_reg_1195;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_18_1_reg_161 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_19_1_reg_150 <= select_ln265_19_reg_1201;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_19_1_reg_150 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_1_1_reg_348 <= select_ln265_1_reg_1093;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_1_1_reg_348 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_2_1_reg_337 <= select_ln265_2_reg_1099;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_2_1_reg_337 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_3_1_reg_326 <= select_ln265_3_reg_1105;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_3_1_reg_326 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_4_1_reg_315 <= select_ln265_4_reg_1111;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_4_1_reg_315 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_5_1_reg_304 <= select_ln265_5_reg_1117;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_5_1_reg_304 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_6_1_reg_293 <= select_ln265_6_reg_1123;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_6_1_reg_293 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_7_1_reg_282 <= select_ln265_7_reg_1129;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_7_1_reg_282 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_8_1_reg_271 <= select_ln265_8_reg_1135;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_8_1_reg_271 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buf_V_9_1_reg_260 <= select_ln265_9_reg_1141;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_V_9_1_reg_260 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_fu_381_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_139 <= add_ln254_fu_387_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_139 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        kx_0_reg_370 <= kx_reg_1207;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        kx_0_reg_370 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln254_reg_1078 <= icmp_ln254_fu_381_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_fu_381_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln256_1_reg_1212 <= icmp_ln256_1_fu_1047_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln254_fu_381_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        kx_reg_1207 <= kx_fu_1039_p3;
        select_ln265_10_reg_1147 <= select_ln265_10_fu_809_p3;
        select_ln265_11_reg_1153 <= select_ln265_11_fu_833_p3;
        select_ln265_12_reg_1159 <= select_ln265_12_fu_857_p3;
        select_ln265_13_reg_1165 <= select_ln265_13_fu_881_p3;
        select_ln265_14_reg_1171 <= select_ln265_14_fu_905_p3;
        select_ln265_15_reg_1177 <= select_ln265_15_fu_929_p3;
        select_ln265_16_reg_1183 <= select_ln265_16_fu_953_p3;
        select_ln265_17_reg_1189 <= select_ln265_17_fu_977_p3;
        select_ln265_18_reg_1195 <= select_ln265_18_fu_1001_p3;
        select_ln265_19_reg_1201 <= select_ln265_19_fu_1025_p3;
        select_ln265_1_reg_1093 <= select_ln265_1_fu_593_p3;
        select_ln265_2_reg_1099 <= select_ln265_2_fu_617_p3;
        select_ln265_3_reg_1105 <= select_ln265_3_fu_641_p3;
        select_ln265_4_reg_1111 <= select_ln265_4_fu_665_p3;
        select_ln265_5_reg_1117 <= select_ln265_5_fu_689_p3;
        select_ln265_6_reg_1123 <= select_ln265_6_fu_713_p3;
        select_ln265_7_reg_1129 <= select_ln265_7_fu_737_p3;
        select_ln265_8_reg_1135 <= select_ln265_8_fu_761_p3;
        select_ln265_9_reg_1141 <= select_ln265_9_fu_785_p3;
        select_ln265_reg_1087 <= select_ln265_fu_569_p3;
    end
end

always @ (*) begin
    if ((icmp_ln254_fu_381_p2 == 1'd1)) begin
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
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_0_1_phi_fu_363_p4 = select_ln265_reg_1087;
    end else begin
        ap_phi_mux_buf_V_0_1_phi_fu_363_p4 = buf_V_0_1_reg_359;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_10_1_phi_fu_253_p4 = select_ln265_10_reg_1147;
    end else begin
        ap_phi_mux_buf_V_10_1_phi_fu_253_p4 = buf_V_10_1_reg_249;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_11_1_phi_fu_242_p4 = select_ln265_11_reg_1153;
    end else begin
        ap_phi_mux_buf_V_11_1_phi_fu_242_p4 = buf_V_11_1_reg_238;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_12_1_phi_fu_231_p4 = select_ln265_12_reg_1159;
    end else begin
        ap_phi_mux_buf_V_12_1_phi_fu_231_p4 = buf_V_12_1_reg_227;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_13_1_phi_fu_220_p4 = select_ln265_13_reg_1165;
    end else begin
        ap_phi_mux_buf_V_13_1_phi_fu_220_p4 = buf_V_13_1_reg_216;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_14_1_phi_fu_209_p4 = select_ln265_14_reg_1171;
    end else begin
        ap_phi_mux_buf_V_14_1_phi_fu_209_p4 = buf_V_14_1_reg_205;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_15_1_phi_fu_198_p4 = select_ln265_15_reg_1177;
    end else begin
        ap_phi_mux_buf_V_15_1_phi_fu_198_p4 = buf_V_15_1_reg_194;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_16_1_phi_fu_187_p4 = select_ln265_16_reg_1183;
    end else begin
        ap_phi_mux_buf_V_16_1_phi_fu_187_p4 = buf_V_16_1_reg_183;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_17_1_phi_fu_176_p4 = select_ln265_17_reg_1189;
    end else begin
        ap_phi_mux_buf_V_17_1_phi_fu_176_p4 = buf_V_17_1_reg_172;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_18_1_phi_fu_165_p4 = select_ln265_18_reg_1195;
    end else begin
        ap_phi_mux_buf_V_18_1_phi_fu_165_p4 = buf_V_18_1_reg_161;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_19_1_phi_fu_154_p4 = select_ln265_19_reg_1201;
    end else begin
        ap_phi_mux_buf_V_19_1_phi_fu_154_p4 = buf_V_19_1_reg_150;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_1_1_phi_fu_352_p4 = select_ln265_1_reg_1093;
    end else begin
        ap_phi_mux_buf_V_1_1_phi_fu_352_p4 = buf_V_1_1_reg_348;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_2_1_phi_fu_341_p4 = select_ln265_2_reg_1099;
    end else begin
        ap_phi_mux_buf_V_2_1_phi_fu_341_p4 = buf_V_2_1_reg_337;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_3_1_phi_fu_330_p4 = select_ln265_3_reg_1105;
    end else begin
        ap_phi_mux_buf_V_3_1_phi_fu_330_p4 = buf_V_3_1_reg_326;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_4_1_phi_fu_319_p4 = select_ln265_4_reg_1111;
    end else begin
        ap_phi_mux_buf_V_4_1_phi_fu_319_p4 = buf_V_4_1_reg_315;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_5_1_phi_fu_308_p4 = select_ln265_5_reg_1117;
    end else begin
        ap_phi_mux_buf_V_5_1_phi_fu_308_p4 = buf_V_5_1_reg_304;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_6_1_phi_fu_297_p4 = select_ln265_6_reg_1123;
    end else begin
        ap_phi_mux_buf_V_6_1_phi_fu_297_p4 = buf_V_6_1_reg_293;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_7_1_phi_fu_286_p4 = select_ln265_7_reg_1129;
    end else begin
        ap_phi_mux_buf_V_7_1_phi_fu_286_p4 = buf_V_7_1_reg_282;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_8_1_phi_fu_275_p4 = select_ln265_8_reg_1135;
    end else begin
        ap_phi_mux_buf_V_8_1_phi_fu_275_p4 = buf_V_8_1_reg_271;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_buf_V_9_1_phi_fu_264_p4 = select_ln265_9_reg_1141;
    end else begin
        ap_phi_mux_buf_V_9_1_phi_fu_264_p4 = buf_V_9_1_reg_260;
    end
end

always @ (*) begin
    if (((icmp_ln254_reg_1078 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_kx_0_phi_fu_374_p4 = kx_reg_1207;
    end else begin
        ap_phi_mux_kx_0_phi_fu_374_p4 = kx_0_reg_370;
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
    if (((icmp_ln254_fu_381_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_V_TDATA_blk_n = in_V_V_TVALID;
    end else begin
        in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln254_fu_381_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in_V_V_TREADY = 1'b1;
    end else begin
        in_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln256_1_reg_1212 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_V_TDATA_blk_n = out_V_V_TREADY;
    end else begin
        out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln256_1_reg_1212 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_V_V_TVALID = 1'b1;
    end else begin
        out_V_V_TVALID = 1'b0;
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
            if (~((icmp_ln254_fu_381_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln254_fu_381_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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

assign add_ln254_fu_387_p2 = (indvar_flatten_reg_139 + 8'd1);

assign add_ln256_fu_1033_p2 = (3'd1 + ap_phi_mux_kx_0_phi_fu_374_p4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln254_fu_381_p2 == 1'd0) & (in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((icmp_ln254_fu_381_p2 == 1'd0) & (in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((icmp_ln254_fu_381_p2 == 1'd0) & (in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((icmp_ln254_fu_381_p2 == 1'd0) & (in_V_V_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln256_1_reg_1212 == 1'd1) & (out_V_V_TREADY == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buf_0_V_fu_559_p1 = in_V_V_TDATA[1:0];

assign buf_10_V_fu_793_p4 = {{in_V_V_TDATA[21:20]}};

assign buf_11_V_fu_817_p4 = {{in_V_V_TDATA[23:22]}};

assign buf_12_V_fu_841_p4 = {{in_V_V_TDATA[25:24]}};

assign buf_13_V_fu_865_p4 = {{in_V_V_TDATA[27:26]}};

assign buf_14_V_fu_889_p4 = {{in_V_V_TDATA[29:28]}};

assign buf_15_V_fu_913_p4 = {{in_V_V_TDATA[31:30]}};

assign buf_16_V_fu_937_p4 = {{in_V_V_TDATA[33:32]}};

assign buf_17_V_fu_961_p4 = {{in_V_V_TDATA[35:34]}};

assign buf_18_V_fu_985_p4 = {{in_V_V_TDATA[37:36]}};

assign buf_19_V_fu_1009_p4 = {{in_V_V_TDATA[39:38]}};

assign buf_1_V_fu_577_p4 = {{in_V_V_TDATA[3:2]}};

assign buf_2_V_fu_601_p4 = {{in_V_V_TDATA[5:4]}};

assign buf_3_V_fu_625_p4 = {{in_V_V_TDATA[7:6]}};

assign buf_4_V_fu_649_p4 = {{in_V_V_TDATA[9:8]}};

assign buf_5_V_fu_673_p4 = {{in_V_V_TDATA[11:10]}};

assign buf_6_V_fu_697_p4 = {{in_V_V_TDATA[13:12]}};

assign buf_7_V_fu_721_p4 = {{in_V_V_TDATA[15:14]}};

assign buf_8_V_fu_745_p4 = {{in_V_V_TDATA[17:16]}};

assign buf_9_V_fu_769_p4 = {{in_V_V_TDATA[19:18]}};

assign icmp_ln254_fu_381_p2 = ((indvar_flatten_reg_139 == 8'd185) ? 1'b1 : 1'b0);

assign icmp_ln256_1_fu_1047_p2 = ((kx_fu_1039_p3 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln256_fu_393_p2 = ((ap_phi_mux_kx_0_phi_fu_374_p4 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln895_10_fu_803_p2 = ((buf_10_V_fu_793_p4 > select_ln256_9_fu_471_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_11_fu_827_p2 = ((buf_11_V_fu_817_p4 > select_ln256_8_fu_463_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_12_fu_851_p2 = ((buf_12_V_fu_841_p4 > select_ln256_7_fu_455_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_13_fu_875_p2 = ((buf_13_V_fu_865_p4 > select_ln256_6_fu_447_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_14_fu_899_p2 = ((buf_14_V_fu_889_p4 > select_ln256_5_fu_439_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_15_fu_923_p2 = ((buf_15_V_fu_913_p4 > select_ln256_4_fu_431_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_16_fu_947_p2 = ((buf_16_V_fu_937_p4 > select_ln256_3_fu_423_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_17_fu_971_p2 = ((buf_17_V_fu_961_p4 > select_ln256_2_fu_415_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_18_fu_995_p2 = ((buf_18_V_fu_985_p4 > select_ln256_1_fu_407_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_19_fu_1019_p2 = ((buf_19_V_fu_1009_p4 > select_ln256_fu_399_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_1_fu_587_p2 = ((buf_1_V_fu_577_p4 > select_ln256_18_fu_543_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_2_fu_611_p2 = ((buf_2_V_fu_601_p4 > select_ln256_17_fu_535_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_3_fu_635_p2 = ((buf_3_V_fu_625_p4 > select_ln256_16_fu_527_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_4_fu_659_p2 = ((buf_4_V_fu_649_p4 > select_ln256_15_fu_519_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_5_fu_683_p2 = ((buf_5_V_fu_673_p4 > select_ln256_14_fu_511_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_6_fu_707_p2 = ((buf_6_V_fu_697_p4 > select_ln256_13_fu_503_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_7_fu_731_p2 = ((buf_7_V_fu_721_p4 > select_ln256_12_fu_495_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_8_fu_755_p2 = ((buf_8_V_fu_745_p4 > select_ln256_11_fu_487_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_9_fu_779_p2 = ((buf_9_V_fu_769_p4 > select_ln256_10_fu_479_p3) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_563_p2 = ((buf_0_V_fu_559_p1 > select_ln256_19_fu_551_p3) ? 1'b1 : 1'b0);

assign kx_fu_1039_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 3'd1 : add_ln256_fu_1033_p2);

assign out_V_V_TDATA = {{{{{{{{{{{{{{{{{{{{select_ln265_19_reg_1201}, {select_ln265_18_reg_1195}}, {select_ln265_17_reg_1189}}, {select_ln265_16_reg_1183}}, {select_ln265_15_reg_1177}}, {select_ln265_14_reg_1171}}, {select_ln265_13_reg_1165}}, {select_ln265_12_reg_1159}}, {select_ln265_11_reg_1153}}, {select_ln265_10_reg_1147}}, {select_ln265_9_reg_1141}}, {select_ln265_8_reg_1135}}, {select_ln265_7_reg_1129}}, {select_ln265_6_reg_1123}}, {select_ln265_5_reg_1117}}, {select_ln265_4_reg_1111}}, {select_ln265_3_reg_1105}}, {select_ln265_2_reg_1099}}, {select_ln265_1_reg_1093}}, {select_ln265_reg_1087}};

assign select_ln256_10_fu_479_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_9_1_phi_fu_264_p4);

assign select_ln256_11_fu_487_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_8_1_phi_fu_275_p4);

assign select_ln256_12_fu_495_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_7_1_phi_fu_286_p4);

assign select_ln256_13_fu_503_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_6_1_phi_fu_297_p4);

assign select_ln256_14_fu_511_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_5_1_phi_fu_308_p4);

assign select_ln256_15_fu_519_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_4_1_phi_fu_319_p4);

assign select_ln256_16_fu_527_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_3_1_phi_fu_330_p4);

assign select_ln256_17_fu_535_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_2_1_phi_fu_341_p4);

assign select_ln256_18_fu_543_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_1_1_phi_fu_352_p4);

assign select_ln256_19_fu_551_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_0_1_phi_fu_363_p4);

assign select_ln256_1_fu_407_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_18_1_phi_fu_165_p4);

assign select_ln256_2_fu_415_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_17_1_phi_fu_176_p4);

assign select_ln256_3_fu_423_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_16_1_phi_fu_187_p4);

assign select_ln256_4_fu_431_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_15_1_phi_fu_198_p4);

assign select_ln256_5_fu_439_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_14_1_phi_fu_209_p4);

assign select_ln256_6_fu_447_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_13_1_phi_fu_220_p4);

assign select_ln256_7_fu_455_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_12_1_phi_fu_231_p4);

assign select_ln256_8_fu_463_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_11_1_phi_fu_242_p4);

assign select_ln256_9_fu_471_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_10_1_phi_fu_253_p4);

assign select_ln256_fu_399_p3 = ((icmp_ln256_fu_393_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_buf_V_19_1_phi_fu_154_p4);

assign select_ln265_10_fu_809_p3 = ((icmp_ln895_10_fu_803_p2[0:0] === 1'b1) ? buf_10_V_fu_793_p4 : select_ln256_9_fu_471_p3);

assign select_ln265_11_fu_833_p3 = ((icmp_ln895_11_fu_827_p2[0:0] === 1'b1) ? buf_11_V_fu_817_p4 : select_ln256_8_fu_463_p3);

assign select_ln265_12_fu_857_p3 = ((icmp_ln895_12_fu_851_p2[0:0] === 1'b1) ? buf_12_V_fu_841_p4 : select_ln256_7_fu_455_p3);

assign select_ln265_13_fu_881_p3 = ((icmp_ln895_13_fu_875_p2[0:0] === 1'b1) ? buf_13_V_fu_865_p4 : select_ln256_6_fu_447_p3);

assign select_ln265_14_fu_905_p3 = ((icmp_ln895_14_fu_899_p2[0:0] === 1'b1) ? buf_14_V_fu_889_p4 : select_ln256_5_fu_439_p3);

assign select_ln265_15_fu_929_p3 = ((icmp_ln895_15_fu_923_p2[0:0] === 1'b1) ? buf_15_V_fu_913_p4 : select_ln256_4_fu_431_p3);

assign select_ln265_16_fu_953_p3 = ((icmp_ln895_16_fu_947_p2[0:0] === 1'b1) ? buf_16_V_fu_937_p4 : select_ln256_3_fu_423_p3);

assign select_ln265_17_fu_977_p3 = ((icmp_ln895_17_fu_971_p2[0:0] === 1'b1) ? buf_17_V_fu_961_p4 : select_ln256_2_fu_415_p3);

assign select_ln265_18_fu_1001_p3 = ((icmp_ln895_18_fu_995_p2[0:0] === 1'b1) ? buf_18_V_fu_985_p4 : select_ln256_1_fu_407_p3);

assign select_ln265_19_fu_1025_p3 = ((icmp_ln895_19_fu_1019_p2[0:0] === 1'b1) ? buf_19_V_fu_1009_p4 : select_ln256_fu_399_p3);

assign select_ln265_1_fu_593_p3 = ((icmp_ln895_1_fu_587_p2[0:0] === 1'b1) ? buf_1_V_fu_577_p4 : select_ln256_18_fu_543_p3);

assign select_ln265_2_fu_617_p3 = ((icmp_ln895_2_fu_611_p2[0:0] === 1'b1) ? buf_2_V_fu_601_p4 : select_ln256_17_fu_535_p3);

assign select_ln265_3_fu_641_p3 = ((icmp_ln895_3_fu_635_p2[0:0] === 1'b1) ? buf_3_V_fu_625_p4 : select_ln256_16_fu_527_p3);

assign select_ln265_4_fu_665_p3 = ((icmp_ln895_4_fu_659_p2[0:0] === 1'b1) ? buf_4_V_fu_649_p4 : select_ln256_15_fu_519_p3);

assign select_ln265_5_fu_689_p3 = ((icmp_ln895_5_fu_683_p2[0:0] === 1'b1) ? buf_5_V_fu_673_p4 : select_ln256_14_fu_511_p3);

assign select_ln265_6_fu_713_p3 = ((icmp_ln895_6_fu_707_p2[0:0] === 1'b1) ? buf_6_V_fu_697_p4 : select_ln256_13_fu_503_p3);

assign select_ln265_7_fu_737_p3 = ((icmp_ln895_7_fu_731_p2[0:0] === 1'b1) ? buf_7_V_fu_721_p4 : select_ln256_12_fu_495_p3);

assign select_ln265_8_fu_761_p3 = ((icmp_ln895_8_fu_755_p2[0:0] === 1'b1) ? buf_8_V_fu_745_p4 : select_ln256_11_fu_487_p3);

assign select_ln265_9_fu_785_p3 = ((icmp_ln895_9_fu_779_p2[0:0] === 1'b1) ? buf_9_V_fu_769_p4 : select_ln256_10_fu_479_p3);

assign select_ln265_fu_569_p3 = ((icmp_ln895_fu_563_p2[0:0] === 1'b1) ? buf_0_V_fu_559_p1 : select_ln256_19_fu_551_p3);

endmodule //StreamingMaxPool_Batch_1_StreamingMaxPool_Pre
