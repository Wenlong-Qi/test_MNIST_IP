// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ConvolutionInputGenerator1D_2_ConvolutionInputGene_1 (
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
wire   [0:0] icmp_ln1279_fu_284_p2;
wire   [0:0] icmp_ln1281_fu_299_p2;
wire   [0:0] and_ln1327_fu_474_p2;
reg    out_V_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln1281_reg_750;
reg   [0:0] icmp_ln1297_reg_754;
reg   [8:0] i_0_0_reg_187;
reg    ap_predicate_op105_read_state2;
reg    ap_predicate_op136_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_predicate_op172_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] add_ln1279_fu_290_p2;
wire   [0:0] icmp_ln1297_fu_308_p2;
reg   [31:0] k_y_1_0_load_reg_758;
reg   [31:0] current_block_write_3_reg_763;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [5:0] inputBuf_0_V_address0;
reg    inputBuf_0_V_ce0;
wire   [39:0] inputBuf_0_V_q0;
reg   [5:0] inputBuf_0_V_address1;
reg    inputBuf_0_V_ce1;
reg    inputBuf_0_V_we1;
wire   [5:0] inputBuf_1_V_address0;
reg    inputBuf_1_V_ce0;
wire   [39:0] inputBuf_1_V_q0;
reg   [5:0] inputBuf_1_V_address1;
reg    inputBuf_1_V_ce1;
reg    inputBuf_1_V_we1;
wire   [63:0] zext_ln1303_fu_344_p1;
wire   [63:0] zext_ln1330_fu_480_p1;
wire   [63:0] zext_ln1284_fu_576_p1;
reg   [31:0] ofm_y_1_0_fu_64;
wire   [31:0] select_ln1318_1_fu_441_p3;
wire   [0:0] icmp_ln1306_fu_356_p2;
wire   [0:0] icmp_ln1309_fu_373_p2;
wire   [0:0] icmp_ln1312_fu_387_p2;
wire   [0:0] icmp_ln1315_fu_407_p2;
reg   [31:0] ofm_x_1_0_fu_68;
wire   [31:0] add_ln1314_fu_401_p2;
reg   [31:0] k_y_1_0_fu_72;
wire   [31:0] add_ln1298_fu_326_p2;
reg   [31:0] inp_15_0_fu_76;
wire   [31:0] select_ln1318_fu_433_p3;
wire   [31:0] add_ln1286_fu_586_p2;
reg   [31:0] k_x_1_0_fu_80;
wire   [31:0] add_ln1308_fu_367_p2;
reg   [31:0] count_simd_1_0_fu_84;
wire   [31:0] add_ln1305_fu_350_p2;
reg   [31:0] read_block_1_0_fu_88;
wire   [31:0] zext_ln1334_fu_529_p1;
wire   [31:0] add_ln1293_fu_622_p2;
wire   [0:0] icmp_ln1287_fu_258_p2;
reg   [31:0] current_block_write_s_fu_92;
wire   [31:0] select_ln1334_fu_513_p3;
wire   [31:0] select_ln1290_fu_614_p3;
reg   [31:0] current_line_1_0_fu_96;
wire   [31:0] select_ln1334_1_fu_521_p3;
wire   [31:0] grp_fu_246_p2;
reg   [31:0] counter_internal_blo_fu_100;
wire   [31:0] select_ln1346_fu_563_p3;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] trunc_ln321_1_fu_486_p1;
wire   [0:0] trunc_ln321_fu_582_p1;
wire   [31:0] add_ln1302_fu_332_p2;
wire   [31:0] add_ln1302_1_fu_338_p2;
wire   [0:0] icmp_ln1318_fu_427_p2;
wire   [31:0] add_ln1317_fu_421_p2;
wire   [0:0] icmp_ln1327_fu_462_p2;
wire   [0:0] icmp_ln1327_1_fu_468_p2;
wire   [31:0] add_ln1338_fu_493_p2;
wire   [0:0] icmp_ln1339_fu_499_p2;
wire   [0:0] icmp_ln1334_fu_252_p2;
wire   [31:0] select_ln1339_fu_505_p3;
wire   [31:0] add_ln1345_fu_551_p2;
wire   [0:0] icmp_ln1346_fu_557_p2;
wire   [31:0] add_ln1289_fu_602_p2;
wire   [0:0] icmp_ln1290_fu_608_p2;
wire   [0:0] trunc_ln1298_1_fu_641_p1;
wire   [0:0] trunc_ln1298_fu_638_p1;
wire   [0:0] xor_ln1303_fu_644_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_predicate_op111_store_state2;
reg    ap_enable_operation_111;
reg    ap_enable_state2_pp0_iter0_stage0;
reg    ap_predicate_op55_load_state2;
reg    ap_enable_operation_55;
reg    ap_predicate_op169_load_state3;
reg    ap_enable_operation_169;
reg    ap_enable_state3_pp0_iter1_stage0;
reg    ap_predicate_op142_store_state2;
reg    ap_enable_operation_142;
reg    ap_predicate_op113_store_state2;
reg    ap_enable_operation_113;
reg    ap_predicate_op56_load_state2;
reg    ap_enable_operation_56;
reg    ap_predicate_op170_load_state3;
reg    ap_enable_operation_170;
reg    ap_predicate_op144_store_state2;
reg    ap_enable_operation_144;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_550;
reg    ap_condition_206;
reg    ap_condition_556;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

ConvolutionInputGenerator1D_2_ConvolutionInputGbkb #(
    .DataWidth( 40 ),
    .AddressRange( 37 ),
    .AddressWidth( 6 ))
inputBuf_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(inputBuf_0_V_address0),
    .ce0(inputBuf_0_V_ce0),
    .q0(inputBuf_0_V_q0),
    .address1(inputBuf_0_V_address1),
    .ce1(inputBuf_0_V_ce1),
    .we1(inputBuf_0_V_we1),
    .d1(in_V_V_TDATA)
);

ConvolutionInputGenerator1D_2_ConvolutionInputGbkb #(
    .DataWidth( 40 ),
    .AddressRange( 37 ),
    .AddressWidth( 6 ))
inputBuf_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(inputBuf_1_V_address0),
    .ce0(inputBuf_1_V_ce0),
    .q0(inputBuf_1_V_q0),
    .address1(inputBuf_1_V_address1),
    .ce1(inputBuf_1_V_ce1),
    .we1(inputBuf_1_V_we1),
    .d1(in_V_V_TDATA)
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1306_fu_356_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        count_simd_1_0_fu_84 <= add_ln1305_fu_350_p2;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1309_fu_373_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1312_fu_387_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1315_fu_407_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1315_fu_407_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        count_simd_1_0_fu_84 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        counter_internal_blo_fu_100 <= select_ln1346_fu_563_p3;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1287_fu_258_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        counter_internal_blo_fu_100 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1287_fu_258_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        current_block_write_s_fu_92 <= select_ln1290_fu_614_p3;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        current_block_write_s_fu_92 <= select_ln1334_fu_513_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        current_block_write_s_fu_92 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1287_fu_258_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        current_line_1_0_fu_96 <= grp_fu_246_p2;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        current_line_1_0_fu_96 <= select_ln1334_1_fu_521_p3;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1287_fu_258_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        current_line_1_0_fu_96 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_0_reg_187 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_0_reg_187 <= add_ln1279_fu_290_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inp_15_0_fu_76 <= add_ln1286_fu_586_p2;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1315_fu_407_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inp_15_0_fu_76 <= select_ln1318_fu_433_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        inp_15_0_fu_76 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1309_fu_373_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_x_1_0_fu_80 <= add_ln1308_fu_367_p2;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1312_fu_387_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1315_fu_407_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1315_fu_407_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        k_x_1_0_fu_80 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1312_fu_387_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_y_1_0_fu_72 <= add_ln1298_fu_326_p2;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        k_y_1_0_fu_72 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1315_fu_407_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ofm_x_1_0_fu_68 <= add_ln1314_fu_401_p2;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1315_fu_407_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        ofm_x_1_0_fu_68 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1315_fu_407_p2 == 1'd1) & (icmp_ln1312_fu_387_p2 == 1'd1) & (icmp_ln1309_fu_373_p2 == 1'd1) & (icmp_ln1306_fu_356_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ofm_y_1_0_fu_64 <= select_ln1318_1_fu_441_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ofm_y_1_0_fu_64 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1287_fu_258_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        read_block_1_0_fu_88 <= add_ln1293_fu_622_p2;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        read_block_1_0_fu_88 <= zext_ln1334_fu_529_p1;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        read_block_1_0_fu_88 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        current_block_write_3_reg_763 <= current_block_write_s_fu_92;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1279_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1281_reg_750 <= icmp_ln1281_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1297_reg_754 <= icmp_ln1297_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_y_1_0_load_reg_758 <= k_y_1_0_fu_72;
    end
end

always @ (*) begin
    if ((icmp_ln1279_fu_284_p2 == 1'd1)) begin
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
    if ((((1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        in_V_V_TDATA_blk_n = in_V_V_TVALID;
    end else begin
        in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op136_read_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op105_read_state2 == 1'b1)))) begin
        in_V_V_TREADY = 1'b1;
    end else begin
        in_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_206)) begin
        if (((icmp_ln1281_fu_299_p2 == 1'd1) & (trunc_ln321_fu_582_p1 == 1'd0))) begin
            inputBuf_0_V_address1 = zext_ln1284_fu_576_p1;
        end else if ((1'b1 == ap_condition_550)) begin
            inputBuf_0_V_address1 = zext_ln1330_fu_480_p1;
        end else begin
            inputBuf_0_V_address1 = 'bx;
        end
    end else begin
        inputBuf_0_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inputBuf_0_V_ce0 = 1'b1;
    end else begin
        inputBuf_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (trunc_ln321_1_fu_486_p1 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1281_fu_299_p2 == 1'd1) & (trunc_ln321_fu_582_p1 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        inputBuf_0_V_ce1 = 1'b1;
    end else begin
        inputBuf_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (trunc_ln321_1_fu_486_p1 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1281_fu_299_p2 == 1'd1) & (trunc_ln321_fu_582_p1 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        inputBuf_0_V_we1 = 1'b1;
    end else begin
        inputBuf_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_206)) begin
        if (((trunc_ln321_fu_582_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1))) begin
            inputBuf_1_V_address1 = zext_ln1284_fu_576_p1;
        end else if ((1'b1 == ap_condition_556)) begin
            inputBuf_1_V_address1 = zext_ln1330_fu_480_p1;
        end else begin
            inputBuf_1_V_address1 = 'bx;
        end
    end else begin
        inputBuf_1_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inputBuf_1_V_ce0 = 1'b1;
    end else begin
        inputBuf_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (trunc_ln321_1_fu_486_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln321_fu_582_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        inputBuf_1_V_ce1 = 1'b1;
    end else begin
        inputBuf_1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln1327_fu_474_p2) & (trunc_ln321_1_fu_486_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln321_fu_582_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        inputBuf_1_V_we1 = 1'b1;
    end else begin
        inputBuf_1_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1297_reg_754 == 1'd1) & (icmp_ln1281_reg_750 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_V_TDATA_blk_n = out_V_V_TREADY;
    end else begin
        out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op172_write_state3 == 1'b1))) begin
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
            if (~((icmp_ln1279_fu_284_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln1279_fu_284_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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

assign add_ln1279_fu_290_p2 = (i_0_0_reg_187 + 9'd1);

assign add_ln1286_fu_586_p2 = (inp_15_0_fu_76 + 32'd1);

assign add_ln1289_fu_602_p2 = (current_block_write_s_fu_92 + 32'd1);

assign add_ln1293_fu_622_p2 = (read_block_1_0_fu_88 + 32'd1);

assign add_ln1298_fu_326_p2 = (32'd1 + k_y_1_0_fu_72);

assign add_ln1302_1_fu_338_p2 = (add_ln1302_fu_332_p2 + k_x_1_0_fu_80);

assign add_ln1302_fu_332_p2 = (ofm_x_1_0_fu_68 + count_simd_1_0_fu_84);

assign add_ln1305_fu_350_p2 = (32'd1 + count_simd_1_0_fu_84);

assign add_ln1308_fu_367_p2 = (k_x_1_0_fu_80 + 32'd1);

assign add_ln1314_fu_401_p2 = (ofm_x_1_0_fu_68 + 32'd1);

assign add_ln1317_fu_421_p2 = (ofm_y_1_0_fu_64 + 32'd1);

assign add_ln1338_fu_493_p2 = (current_block_write_s_fu_92 + 32'd1);

assign add_ln1345_fu_551_p2 = (counter_internal_blo_fu_100 + 32'd1);

assign and_ln1327_fu_474_p2 = (icmp_ln1327_fu_462_p2 & icmp_ln1327_1_fu_468_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((in_V_V_TVALID == 1'b0) & (ap_predicate_op136_read_state2 == 1'b1)) | ((in_V_V_TVALID == 1'b0) & (ap_predicate_op105_read_state2 == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((in_V_V_TVALID == 1'b0) & (ap_predicate_op136_read_state2 == 1'b1)) | ((in_V_V_TVALID == 1'b0) & (ap_predicate_op105_read_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((in_V_V_TVALID == 1'b0) & (ap_predicate_op136_read_state2 == 1'b1)) | ((in_V_V_TVALID == 1'b0) & (ap_predicate_op105_read_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = (((in_V_V_TVALID == 1'b0) & (ap_predicate_op136_read_state2 == 1'b1)) | ((in_V_V_TVALID == 1'b0) & (ap_predicate_op105_read_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_io = ((out_V_V_TREADY == 1'b0) & (ap_predicate_op172_write_state3 == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_206 = ((icmp_ln1279_fu_284_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_550 = ((1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (trunc_ln321_1_fu_486_p1 == 1'd0));
end

always @ (*) begin
    ap_condition_556 = ((1'd1 == and_ln1327_fu_474_p2) & (trunc_ln321_1_fu_486_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0));
end

always @ (*) begin
    ap_enable_operation_111 = (ap_predicate_op111_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_113 = (ap_predicate_op113_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_142 = (ap_predicate_op142_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_144 = (ap_predicate_op144_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_169 = (ap_predicate_op169_load_state3 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_170 = (ap_predicate_op170_load_state3 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_55 = (ap_predicate_op55_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_56 = (ap_predicate_op56_load_state2 == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_enable_state2_pp0_iter0_stage0 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state3_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_predicate_op105_read_state2 = ((1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op111_store_state2 = ((1'd1 == and_ln1327_fu_474_p2) & (icmp_ln1281_fu_299_p2 == 1'd0) & (trunc_ln321_1_fu_486_p1 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op113_store_state2 = ((1'd1 == and_ln1327_fu_474_p2) & (trunc_ln321_1_fu_486_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op136_read_state2 = ((icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op142_store_state2 = ((icmp_ln1281_fu_299_p2 == 1'd1) & (trunc_ln321_fu_582_p1 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op144_store_state2 = ((trunc_ln321_fu_582_p1 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd1) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op169_load_state3 = ((icmp_ln1297_reg_754 == 1'd1) & (icmp_ln1281_reg_750 == 1'd0));
end

always @ (*) begin
    ap_predicate_op170_load_state3 = ((icmp_ln1297_reg_754 == 1'd1) & (icmp_ln1281_reg_750 == 1'd0));
end

always @ (*) begin
    ap_predicate_op172_write_state3 = ((icmp_ln1297_reg_754 == 1'd1) & (icmp_ln1281_reg_750 == 1'd0));
end

always @ (*) begin
    ap_predicate_op55_load_state2 = ((icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op56_load_state2 = ((icmp_ln1297_fu_308_p2 == 1'd1) & (icmp_ln1281_fu_299_p2 == 1'd0) & (icmp_ln1279_fu_284_p2 == 1'd0));
end

assign grp_fu_246_p2 = (current_line_1_0_fu_96 + 32'd1);

assign icmp_ln1279_fu_284_p2 = ((i_0_0_reg_187 == 9'd277) ? 1'b1 : 1'b0);

assign icmp_ln1281_fu_299_p2 = ((inp_15_0_fu_76 < 32'd37) ? 1'b1 : 1'b0);

assign icmp_ln1287_fu_258_p2 = ((grp_fu_246_p2 == 32'd37) ? 1'b1 : 1'b0);

assign icmp_ln1290_fu_608_p2 = ((add_ln1289_fu_602_p2 == 32'd2) ? 1'b1 : 1'b0);

assign icmp_ln1297_fu_308_p2 = ((counter_internal_blo_fu_100 < 32'd239) ? 1'b1 : 1'b0);

assign icmp_ln1306_fu_356_p2 = ((count_simd_1_0_fu_84 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1309_fu_373_p2 = ((add_ln1308_fu_367_p2 == 32'd8) ? 1'b1 : 1'b0);

assign icmp_ln1312_fu_387_p2 = ((k_y_1_0_fu_72 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1315_fu_407_p2 = ((add_ln1314_fu_401_p2 == 32'd30) ? 1'b1 : 1'b0);

assign icmp_ln1318_fu_427_p2 = ((ofm_y_1_0_fu_64 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1327_1_fu_468_p2 = ((read_block_1_0_fu_88 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1327_fu_462_p2 = ((counter_internal_blo_fu_100 < 32'd36) ? 1'b1 : 1'b0);

assign icmp_ln1334_fu_252_p2 = ((grp_fu_246_p2 == 32'd37) ? 1'b1 : 1'b0);

assign icmp_ln1339_fu_499_p2 = ((add_ln1338_fu_493_p2 == 32'd2) ? 1'b1 : 1'b0);

assign icmp_ln1346_fu_557_p2 = ((add_ln1345_fu_551_p2 == 32'd239) ? 1'b1 : 1'b0);

assign inputBuf_0_V_address0 = zext_ln1303_fu_344_p1;

assign inputBuf_1_V_address0 = zext_ln1303_fu_344_p1;

assign out_V_V_TDATA = ((xor_ln1303_fu_644_p2[0:0] === 1'b1) ? inputBuf_0_V_q0 : inputBuf_1_V_q0);

assign select_ln1290_fu_614_p3 = ((icmp_ln1290_fu_608_p2[0:0] === 1'b1) ? 32'd0 : add_ln1289_fu_602_p2);

assign select_ln1318_1_fu_441_p3 = ((icmp_ln1318_fu_427_p2[0:0] === 1'b1) ? 32'd0 : add_ln1317_fu_421_p2);

assign select_ln1318_fu_433_p3 = ((icmp_ln1318_fu_427_p2[0:0] === 1'b1) ? 32'd0 : inp_15_0_fu_76);

assign select_ln1334_1_fu_521_p3 = ((icmp_ln1334_fu_252_p2[0:0] === 1'b1) ? 32'd0 : grp_fu_246_p2);

assign select_ln1334_fu_513_p3 = ((icmp_ln1334_fu_252_p2[0:0] === 1'b1) ? select_ln1339_fu_505_p3 : current_block_write_s_fu_92);

assign select_ln1339_fu_505_p3 = ((icmp_ln1339_fu_499_p2[0:0] === 1'b1) ? 32'd0 : add_ln1338_fu_493_p2);

assign select_ln1346_fu_563_p3 = ((icmp_ln1346_fu_557_p2[0:0] === 1'b1) ? 32'd0 : add_ln1345_fu_551_p2);

assign trunc_ln1298_1_fu_641_p1 = current_block_write_3_reg_763[0:0];

assign trunc_ln1298_fu_638_p1 = k_y_1_0_load_reg_758[0:0];

assign trunc_ln321_1_fu_486_p1 = current_block_write_s_fu_92[0:0];

assign trunc_ln321_fu_582_p1 = current_block_write_s_fu_92[0:0];

assign xor_ln1303_fu_644_p2 = (trunc_ln1298_fu_638_p1 ^ trunc_ln1298_1_fu_641_p1);

assign zext_ln1284_fu_576_p1 = current_line_1_0_fu_96;

assign zext_ln1303_fu_344_p1 = add_ln1302_1_fu_338_p2;

assign zext_ln1330_fu_480_p1 = current_line_1_0_fu_96;

assign zext_ln1334_fu_529_p1 = icmp_ln1334_fu_252_p2;

endmodule //ConvolutionInputGenerator1D_2_ConvolutionInputGene_1