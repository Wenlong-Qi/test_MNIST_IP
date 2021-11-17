create_project finn_vivado_stitch_proj /tmp/finn_dev_wenlong/vivado_stitch_proj_a2tej8p_ -part xc7a50tfgg484-1
set_property ip_repo_paths [list /workspace/finn/finn-rtllib/memstream /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_0_51st9le5/project_StreamingFIFO_0/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_ConvolutionInputGenerator1D_0_mwhc38sw/project_ConvolutionInputGenerator1D_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_1_xo3w_md2/project_StreamingFIFO_1/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_0_o7_wd0a1/project_StreamingFCLayer_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingDataWidthConverter_Batch_0_cbqbv144/project_StreamingDataWidthConverter_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingMaxPool_Batch_0_d9bvxsbi/project_StreamingMaxPool_Batch_0/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_ConvolutionInputGenerator1D_1_y2v9ipjo/project_ConvolutionInputGenerator1D_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_5_l6vvt95e/project_StreamingFIFO_5/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_1_6gsy5x3t/project_StreamingFCLayer_Batch_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingDataWidthConverter_Batch_1_gyuvg_y2/project_StreamingDataWidthConverter_Batch_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingMaxPool_Batch_1_69zqth4j/project_StreamingMaxPool_Batch_1/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_ConvolutionInputGenerator1D_2_wlljxbzf/project_ConvolutionInputGenerator1D_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFIFO_9_1lzcv8rc/project_StreamingFIFO_9/sol1/impl/verilog /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_2_qakjwmc6/project_StreamingFCLayer_Batch_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingDataWidthConverter_Batch_2_vrhz5exa/project_StreamingDataWidthConverter_Batch_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingMaxPool_Batch_2_byl0hzbo/project_StreamingMaxPool_Batch_2/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_3_nad0h2kf/project_StreamingFCLayer_Batch_3/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_StreamingFCLayer_Batch_4_6b3vbz0w/project_StreamingFCLayer_Batch_4/sol1/impl/ip /tmp/finn_dev_wenlong/code_gen_ipgen_LabelSelect_Batch_0_avfviw6o/project_LabelSelect_Batch_0/sol1/impl/ip] [current_project]
update_ip_catalog
create_bd_design "finn_design"
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_0:1.0 StreamingFIFO_0
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator1D_0:1.0 ConvolutionInputGenerator1D_0
create_bd_cell -type hier StreamingFIFO_1
create_bd_pin -dir I -type clk /StreamingFIFO_1/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_1/out_V_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_1/in0_V_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_1/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {8192}] [get_bd_cells /StreamingFIFO_1/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {distributed}] [get_bd_cells /StreamingFIFO_1/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_1/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_1/out_V_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_1/in0_V_V]
connect_bd_net [get_bd_pins StreamingFIFO_1/ap_rst_n] [get_bd_pins StreamingFIFO_1/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_1/ap_clk] [get_bd_pins StreamingFIFO_1/fifo/s_axis_aclk]
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_0:1.0 StreamingFCLayer_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_0:1.0 StreamingDataWidthConverter_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_0:1.0 StreamingMaxPool_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator1D_1:1.0 ConvolutionInputGenerator1D_1
create_bd_cell -type hier StreamingFIFO_5
create_bd_pin -dir I -type clk /StreamingFIFO_5/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_5/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_5/out_V_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_5/in0_V_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_5/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {2048}] [get_bd_cells /StreamingFIFO_5/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {distributed}] [get_bd_cells /StreamingFIFO_5/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {4}] [get_bd_cells /StreamingFIFO_5/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_5/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_5/out_V_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_5/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_5/in0_V_V]
connect_bd_net [get_bd_pins StreamingFIFO_5/ap_rst_n] [get_bd_pins StreamingFIFO_5/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_5/ap_clk] [get_bd_pins StreamingFIFO_5/fifo/s_axis_aclk]
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_1:1.0 StreamingFCLayer_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_1:1.0 StreamingDataWidthConverter_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_1:1.0 StreamingMaxPool_Batch_1
create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator1D_2:1.0 ConvolutionInputGenerator1D_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_9:1.0 StreamingFIFO_9
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_2:1.0 StreamingFCLayer_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_2:1.0 StreamingDataWidthConverter_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_2:1.0 StreamingMaxPool_Batch_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_3:1.0 StreamingFCLayer_Batch_3
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_4:1.0 StreamingFCLayer_Batch_4
create_bd_cell -type ip -vlnv xilinx.com:hls:LabelSelect_Batch_0:1.0 LabelSelect_Batch_0
make_bd_pins_external [get_bd_pins StreamingFIFO_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_0/in0_V_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_V_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator1D_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator1D_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0/out_V_V] [get_bd_intf_pins ConvolutionInputGenerator1D_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator1D_0/out_V_V] [get_bd_intf_pins StreamingFIFO_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_0/out_V_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator1D_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator1D_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_0/out_V_V] [get_bd_intf_pins ConvolutionInputGenerator1D_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator1D_1/out_V_V] [get_bd_intf_pins StreamingFIFO_5/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_5/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFCLayer_Batch_1/out_V_V] [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingMaxPool_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator1D_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator1D_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingMaxPool_Batch_1/out_V_V] [get_bd_intf_pins ConvolutionInputGenerator1D_2/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator1D_2/out_V_V] [get_bd_intf_pins StreamingFIFO_9/in0_V_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFCLayer_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_9/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_2/in0_V_V]
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
make_wrapper -files [get_files /tmp/finn_dev_wenlong/vivado_stitch_proj_a2tej8p_/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /tmp/finn_dev_wenlong/vivado_stitch_proj_a2tej8p_/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
ipx::package_project -root_dir /tmp/finn_dev_wenlong/vivado_stitch_proj_a2tej8p_/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::update_checksums [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::save_core [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set all_v_files [get_files -filter {FILE_TYPE == Verilog && USED_IN_SYNTHESIS == 1} ]
set fp [open /tmp/finn_dev_wenlong/vivado_stitch_proj_a2tej8p_/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp
