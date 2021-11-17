create_project finn_vivado_stitch_proj /tmp/finn_dev_wenlong/vivado_stitch_proj_x893tc2t -part xc7a50tfgg484-1
set_property ip_repo_paths [list /workspace/finn/finn-rtllib/memstream /tmp/finn_dev_wenlong/code_gen_ipgen_FMPadding_Batch_0_79n2gq_k/project_FMPadding_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_1_hx7hosk9/project_StreamingFIFO_1/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_ConvolutionInputGenerator_0_7blpk0pm/project_ConvolutionInputGenerator_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_2_nzejox6c/project_StreamingFIFO_2/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_0_mqoxt6bn/project_StreamingFCLayer_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingDataWidthConverter_Batch_0_7yjmmirf/project_StreamingDataWidthConverter_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingMaxPool_Batch_0_lg8wm3qt/project_StreamingMaxPool_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_5_rbg1zsb8/project_StreamingFIFO_5/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_ConvolutionInputGenerator_1_pynwx1i_/project_ConvolutionInputGenerator_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_6_77m583gt/project_StreamingFIFO_6/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_1_agap53i5/project_StreamingFCLayer_Batch_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingDataWidthConverter_Batch_1_ta5jcti6/project_StreamingDataWidthConverter_Batch_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingMaxPool_Batch_1_7lmp9f0_/project_StreamingMaxPool_Batch_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_ConvolutionInputGenerator_2_2_kx5okr/project_ConvolutionInputGenerator_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_10_tfd4v_l5/project_StreamingFIFO_10/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_2_bbtljx4k/project_StreamingFCLayer_Batch_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingDataWidthConverter_Batch_2_p1wq43ve/project_StreamingDataWidthConverter_Batch_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingMaxPool_Batch_2_ckhtbt1n/project_StreamingMaxPool_Batch_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_3_f99lxa0r/project_StreamingFCLayer_Batch_3/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_4_s57rf0xi/project_StreamingFCLayer_Batch_4/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_LabelSelect_Batch_0_cuwcd7xu/project_LabelSelect_Batch_0/sol1/impl/ip] [current_project]
update_ip_catalog
create_bd_design "finn_design"
create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_0:1.0 FMPadding_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_1:1.0 StreamingFIFO_1
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_0:1.0 ConvolutionInputGenerator_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_2:1.0 StreamingFIFO_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_0:1.0 StreamingFCLayer_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_0:1.0 StreamingDataWidthConverter_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_0:1.0 StreamingMaxPool_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_5:1.0 StreamingFIFO_5
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_1:1.0 ConvolutionInputGenerator_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_6:1.0 StreamingFIFO_6
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_1:1.0 StreamingFCLayer_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_1:1.0 StreamingDataWidthConverter_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_1:1.0 StreamingMaxPool_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_2:1.0 ConvolutionInputGenerator_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_10:1.0 StreamingFIFO_10
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_2:1.0 StreamingFCLayer_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_2:1.0 StreamingDataWidthConverter_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_2:1.0 StreamingMaxPool_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_3:1.0 StreamingFCLayer_Batch_3
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_4:1.0 StreamingFCLayer_Batch_4
create_bd_cell -type ip -vlnv xilinx.com:hls:LabelSelect_Batch_0:1.0 LabelSelect_Batch_0
make_bd_pins_external [get_bd_pins FMPadding_Batch_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins FMPadding_Batch_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
make_bd_intf_pins_external [get_bd_intf_pins FMPadding_Batch_0/in0_V_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_V_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins FMPadding_Batch_0/out_V_V] [get_bd_intf_pins StreamingFIFO_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1/out_V_V] [get_bd_intf_pins ConvolutionInputGenerator_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_0/out_V_V] [get_bd_intf_pins StreamingFIFO_2/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_2/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_0/out_V_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_0/out_V_V] [get_bd_intf_pins StreamingFIFO_5/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_5/out_V_V] [get_bd_intf_pins ConvolutionInputGenerator_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_1/out_V_V] [get_bd_intf_pins StreamingFIFO_6/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_6/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_1/out_V_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_1/out_V_V] [get_bd_intf_pins ConvolutionInputGenerator_2/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_10/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_10/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_2/out_V_V] [get_bd_intf_pins StreamingFIFO_10/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_10/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_2/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_2/out_V_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_2/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_2/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_3/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_3/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_4/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins LabelSelect_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins LabelSelect_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_4/out_V_V] [get_bd_intf_pins LabelSelect_Batch_0/in0_V_V]
make_bd_intf_pins_external [get_bd_intf_pins LabelSelect_Batch_0/out_V_V]
set_property name m_axis_0 [get_bd_intf_ports out_V_V_0]
set_property CONFIG.FREQ_HZ 50000000.000000 [get_bd_ports /ap_clk]
regenerate_bd_layout
validate_bd_design
save_bd_design
make_wrapper -files [get_files /tmp/finn_dev_wenlong/vivado_stitch_proj_x893tc2t/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /tmp/finn_dev_wenlong/vivado_stitch_proj_x893tc2t/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
ipx::package_project -root_dir /tmp/finn_dev_wenlong/vivado_stitch_proj_x893tc2t/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::update_checksums [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::save_core [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set all_v_files [get_files -filter {FILE_TYPE == Verilog && USED_IN_SYNTHESIS == 1} ]
set fp [open /tmp/finn_dev_wenlong/vivado_stitch_proj_x893tc2t/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp
