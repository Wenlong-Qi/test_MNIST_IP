//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Nov  9 18:16:19 2021
//Host        : finn_dev_wenlong running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target finn_design.bd
//Design      : finn_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "finn_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=21,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=16,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "finn_design.hwdef" *) 
module finn_design
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis_0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 50000000.000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 50000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 50000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) input s_axis_0_tvalid;

  wire [7:0]ConvolutionInputGenerator_0_out_V_V_TDATA;
  wire ConvolutionInputGenerator_0_out_V_V_TREADY;
  wire ConvolutionInputGenerator_0_out_V_V_TVALID;
  wire [31:0]ConvolutionInputGenerator_1_out_V_V_TDATA;
  wire ConvolutionInputGenerator_1_out_V_V_TREADY;
  wire ConvolutionInputGenerator_1_out_V_V_TVALID;
  wire [39:0]ConvolutionInputGenerator_2_out_V_V_TDATA;
  wire ConvolutionInputGenerator_2_out_V_V_TREADY;
  wire ConvolutionInputGenerator_2_out_V_V_TVALID;
  wire [7:0]FMPadding_Batch_0_out_V_V_TDATA;
  wire FMPadding_Batch_0_out_V_V_TREADY;
  wire FMPadding_Batch_0_out_V_V_TVALID;
  wire [7:0]LabelSelect_Batch_0_out_V_V_TDATA;
  wire LabelSelect_Batch_0_out_V_V_TREADY;
  wire LabelSelect_Batch_0_out_V_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_0_out_V_V_TDATA;
  wire StreamingDataWidthConverter_Batch_0_out_V_V_TREADY;
  wire StreamingDataWidthConverter_Batch_0_out_V_V_TVALID;
  wire [39:0]StreamingDataWidthConverter_Batch_1_out_V_V_TDATA;
  wire StreamingDataWidthConverter_Batch_1_out_V_V_TREADY;
  wire StreamingDataWidthConverter_Batch_1_out_V_V_TVALID;
  wire [63:0]StreamingDataWidthConverter_Batch_2_out_V_V_TDATA;
  wire StreamingDataWidthConverter_Batch_2_out_V_V_TREADY;
  wire StreamingDataWidthConverter_Batch_2_out_V_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_0_out_V_V_TDATA;
  wire StreamingFCLayer_Batch_0_out_V_V_TREADY;
  wire StreamingFCLayer_Batch_0_out_V_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_1_out_V_V_TDATA;
  wire StreamingFCLayer_Batch_1_out_V_V_TREADY;
  wire StreamingFCLayer_Batch_1_out_V_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_2_out_V_V_TDATA;
  wire StreamingFCLayer_Batch_2_out_V_V_TREADY;
  wire StreamingFCLayer_Batch_2_out_V_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_3_out_V_V_TDATA;
  wire StreamingFCLayer_Batch_3_out_V_V_TREADY;
  wire StreamingFCLayer_Batch_3_out_V_V_TVALID;
  wire [15:0]StreamingFCLayer_Batch_4_out_V_V_TDATA;
  wire StreamingFCLayer_Batch_4_out_V_V_TREADY;
  wire StreamingFCLayer_Batch_4_out_V_V_TVALID;
  wire [39:0]StreamingFIFO_10_out_V_V_TDATA;
  wire StreamingFIFO_10_out_V_V_TREADY;
  wire StreamingFIFO_10_out_V_V_TVALID;
  wire [7:0]StreamingFIFO_1_out_V_V_TDATA;
  wire StreamingFIFO_1_out_V_V_TREADY;
  wire StreamingFIFO_1_out_V_V_TVALID;
  wire [7:0]StreamingFIFO_2_out_V_V_TDATA;
  wire StreamingFIFO_2_out_V_V_TREADY;
  wire StreamingFIFO_2_out_V_V_TVALID;
  wire [31:0]StreamingFIFO_5_out_V_V_TDATA;
  wire StreamingFIFO_5_out_V_V_TREADY;
  wire StreamingFIFO_5_out_V_V_TVALID;
  wire [31:0]StreamingFIFO_6_out_V_V_TDATA;
  wire StreamingFIFO_6_out_V_V_TREADY;
  wire StreamingFIFO_6_out_V_V_TVALID;
  wire [31:0]StreamingMaxPool_Batch_0_out_V_V_TDATA;
  wire StreamingMaxPool_Batch_0_out_V_V_TREADY;
  wire StreamingMaxPool_Batch_0_out_V_V_TVALID;
  wire [39:0]StreamingMaxPool_Batch_1_out_V_V_TDATA;
  wire StreamingMaxPool_Batch_1_out_V_V_TREADY;
  wire StreamingMaxPool_Batch_1_out_V_V_TVALID;
  wire [63:0]StreamingMaxPool_Batch_2_out_V_V_TDATA;
  wire StreamingMaxPool_Batch_2_out_V_V_TREADY;
  wire StreamingMaxPool_Batch_2_out_V_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [7:0]in0_V_V_0_1_TDATA;
  wire in0_V_V_0_1_TREADY;
  wire in0_V_V_0_1_TVALID;

  assign LabelSelect_Batch_0_out_V_V_TREADY = m_axis_0_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign in0_V_V_0_1_TDATA = s_axis_0_tdata[7:0];
  assign in0_V_V_0_1_TVALID = s_axis_0_tvalid;
  assign m_axis_0_tdata[7:0] = LabelSelect_Batch_0_out_V_V_TDATA;
  assign m_axis_0_tvalid = LabelSelect_Batch_0_out_V_V_TVALID;
  assign s_axis_0_tready = in0_V_V_0_1_TREADY;
  finn_design_ConvolutionInputGenerator_0_0 ConvolutionInputGenerator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFIFO_1_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFIFO_1_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFIFO_1_out_V_V_TVALID),
        .out_V_V_TDATA(ConvolutionInputGenerator_0_out_V_V_TDATA),
        .out_V_V_TREADY(ConvolutionInputGenerator_0_out_V_V_TREADY),
        .out_V_V_TVALID(ConvolutionInputGenerator_0_out_V_V_TVALID));
  finn_design_ConvolutionInputGenerator_1_0 ConvolutionInputGenerator_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFIFO_5_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFIFO_5_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFIFO_5_out_V_V_TVALID),
        .out_V_V_TDATA(ConvolutionInputGenerator_1_out_V_V_TDATA),
        .out_V_V_TREADY(ConvolutionInputGenerator_1_out_V_V_TREADY),
        .out_V_V_TVALID(ConvolutionInputGenerator_1_out_V_V_TVALID));
  finn_design_ConvolutionInputGenerator_2_0 ConvolutionInputGenerator_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingMaxPool_Batch_1_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingMaxPool_Batch_1_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingMaxPool_Batch_1_out_V_V_TVALID),
        .out_V_V_TDATA(ConvolutionInputGenerator_2_out_V_V_TDATA),
        .out_V_V_TREADY(ConvolutionInputGenerator_2_out_V_V_TREADY),
        .out_V_V_TVALID(ConvolutionInputGenerator_2_out_V_V_TVALID));
  finn_design_FMPadding_Batch_0_0 FMPadding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(in0_V_V_0_1_TDATA),
        .in0_V_V_TREADY(in0_V_V_0_1_TREADY),
        .in0_V_V_TVALID(in0_V_V_0_1_TVALID),
        .out_V_V_TDATA(FMPadding_Batch_0_out_V_V_TDATA),
        .out_V_V_TREADY(FMPadding_Batch_0_out_V_V_TREADY),
        .out_V_V_TVALID(FMPadding_Batch_0_out_V_V_TVALID));
  finn_design_LabelSelect_Batch_0_0 LabelSelect_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFCLayer_Batch_4_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFCLayer_Batch_4_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFCLayer_Batch_4_out_V_V_TVALID),
        .out_V_V_TDATA(LabelSelect_Batch_0_out_V_V_TDATA),
        .out_V_V_TREADY(LabelSelect_Batch_0_out_V_V_TREADY),
        .out_V_V_TVALID(LabelSelect_Batch_0_out_V_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_0_0 StreamingDataWidthConverter_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFCLayer_Batch_0_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFCLayer_Batch_0_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFCLayer_Batch_0_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingDataWidthConverter_Batch_0_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingDataWidthConverter_Batch_0_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingDataWidthConverter_Batch_0_out_V_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_1_0 StreamingDataWidthConverter_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFCLayer_Batch_1_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFCLayer_Batch_1_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFCLayer_Batch_1_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_V_TVALID));
  finn_design_StreamingDataWidthConverter_Batch_2_0 StreamingDataWidthConverter_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFCLayer_Batch_2_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFCLayer_Batch_2_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFCLayer_Batch_2_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingDataWidthConverter_Batch_2_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingDataWidthConverter_Batch_2_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingDataWidthConverter_Batch_2_out_V_V_TVALID));
  finn_design_StreamingFCLayer_Batch_0_0 StreamingFCLayer_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFIFO_2_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFIFO_2_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFIFO_2_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFCLayer_Batch_0_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFCLayer_Batch_0_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFCLayer_Batch_0_out_V_V_TVALID));
  finn_design_StreamingFCLayer_Batch_1_0 StreamingFCLayer_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFIFO_6_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFIFO_6_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFIFO_6_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFCLayer_Batch_1_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFCLayer_Batch_1_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFCLayer_Batch_1_out_V_V_TVALID));
  finn_design_StreamingFCLayer_Batch_2_0 StreamingFCLayer_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFIFO_10_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFIFO_10_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFIFO_10_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFCLayer_Batch_2_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFCLayer_Batch_2_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFCLayer_Batch_2_out_V_V_TVALID));
  finn_design_StreamingFCLayer_Batch_3_0 StreamingFCLayer_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingMaxPool_Batch_2_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingMaxPool_Batch_2_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingMaxPool_Batch_2_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFCLayer_Batch_3_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFCLayer_Batch_3_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFCLayer_Batch_3_out_V_V_TVALID));
  finn_design_StreamingFCLayer_Batch_4_0 StreamingFCLayer_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingFCLayer_Batch_3_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingFCLayer_Batch_3_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingFCLayer_Batch_3_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFCLayer_Batch_4_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFCLayer_Batch_4_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFCLayer_Batch_4_out_V_V_TVALID));
  finn_design_StreamingFIFO_1_0 StreamingFIFO_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(FMPadding_Batch_0_out_V_V_TDATA),
        .in0_V_V_TREADY(FMPadding_Batch_0_out_V_V_TREADY),
        .in0_V_V_TVALID(FMPadding_Batch_0_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFIFO_1_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFIFO_1_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFIFO_1_out_V_V_TVALID));
  finn_design_StreamingFIFO_10_0 StreamingFIFO_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(ConvolutionInputGenerator_2_out_V_V_TDATA),
        .in0_V_V_TREADY(ConvolutionInputGenerator_2_out_V_V_TREADY),
        .in0_V_V_TVALID(ConvolutionInputGenerator_2_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFIFO_10_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFIFO_10_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFIFO_10_out_V_V_TVALID));
  finn_design_StreamingFIFO_2_0 StreamingFIFO_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(ConvolutionInputGenerator_0_out_V_V_TDATA),
        .in0_V_V_TREADY(ConvolutionInputGenerator_0_out_V_V_TREADY),
        .in0_V_V_TVALID(ConvolutionInputGenerator_0_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFIFO_2_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFIFO_2_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFIFO_2_out_V_V_TVALID));
  finn_design_StreamingFIFO_5_0 StreamingFIFO_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingMaxPool_Batch_0_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingMaxPool_Batch_0_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingMaxPool_Batch_0_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFIFO_5_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFIFO_5_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFIFO_5_out_V_V_TVALID));
  finn_design_StreamingFIFO_6_0 StreamingFIFO_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(ConvolutionInputGenerator_1_out_V_V_TDATA),
        .in0_V_V_TREADY(ConvolutionInputGenerator_1_out_V_V_TREADY),
        .in0_V_V_TVALID(ConvolutionInputGenerator_1_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingFIFO_6_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingFIFO_6_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingFIFO_6_out_V_V_TVALID));
  finn_design_StreamingMaxPool_Batch_0_0 StreamingMaxPool_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingDataWidthConverter_Batch_0_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingDataWidthConverter_Batch_0_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingDataWidthConverter_Batch_0_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingMaxPool_Batch_0_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingMaxPool_Batch_0_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingMaxPool_Batch_0_out_V_V_TVALID));
  finn_design_StreamingMaxPool_Batch_1_0 StreamingMaxPool_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingMaxPool_Batch_1_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingMaxPool_Batch_1_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingMaxPool_Batch_1_out_V_V_TVALID));
  finn_design_StreamingMaxPool_Batch_2_0 StreamingMaxPool_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_V_TDATA(StreamingDataWidthConverter_Batch_2_out_V_V_TDATA),
        .in0_V_V_TREADY(StreamingDataWidthConverter_Batch_2_out_V_V_TREADY),
        .in0_V_V_TVALID(StreamingDataWidthConverter_Batch_2_out_V_V_TVALID),
        .out_V_V_TDATA(StreamingMaxPool_Batch_2_out_V_V_TDATA),
        .out_V_V_TREADY(StreamingMaxPool_Batch_2_out_V_V_TREADY),
        .out_V_V_TVALID(StreamingMaxPool_Batch_2_out_V_V_TVALID));
endmodule
