
################################################################
# This is a generated script based on design: finn_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source finn_design_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a50tfgg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name finn_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000.000000} \
   ] $m_axis_0

  set s_axis_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000.000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_0


  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk -freq_hz 50000000.000000 ap_clk ]
  set ap_rst_n [ create_bd_port -dir I -type rst ap_rst_n ]

  # Create instance: ConvolutionInputGenerator_0, and set properties
  set ConvolutionInputGenerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_0:1.0 ConvolutionInputGenerator_0 ]

  # Create instance: ConvolutionInputGenerator_1, and set properties
  set ConvolutionInputGenerator_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_1:1.0 ConvolutionInputGenerator_1 ]

  # Create instance: ConvolutionInputGenerator_2, and set properties
  set ConvolutionInputGenerator_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ConvolutionInputGenerator_2:1.0 ConvolutionInputGenerator_2 ]

  # Create instance: FMPadding_Batch_0, and set properties
  set FMPadding_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:FMPadding_Batch_0:1.0 FMPadding_Batch_0 ]

  # Create instance: LabelSelect_Batch_0, and set properties
  set LabelSelect_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:LabelSelect_Batch_0:1.0 LabelSelect_Batch_0 ]

  # Create instance: StreamingDataWidthConverter_Batch_0, and set properties
  set StreamingDataWidthConverter_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_0:1.0 StreamingDataWidthConverter_Batch_0 ]

  # Create instance: StreamingDataWidthConverter_Batch_1, and set properties
  set StreamingDataWidthConverter_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_1:1.0 StreamingDataWidthConverter_Batch_1 ]

  # Create instance: StreamingDataWidthConverter_Batch_2, and set properties
  set StreamingDataWidthConverter_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataWidthConverter_Batch_2:1.0 StreamingDataWidthConverter_Batch_2 ]

  # Create instance: StreamingFCLayer_Batch_0, and set properties
  set StreamingFCLayer_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_0:1.0 StreamingFCLayer_Batch_0 ]

  # Create instance: StreamingFCLayer_Batch_1, and set properties
  set StreamingFCLayer_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_1:1.0 StreamingFCLayer_Batch_1 ]

  # Create instance: StreamingFCLayer_Batch_2, and set properties
  set StreamingFCLayer_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_2:1.0 StreamingFCLayer_Batch_2 ]

  # Create instance: StreamingFCLayer_Batch_3, and set properties
  set StreamingFCLayer_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_3:1.0 StreamingFCLayer_Batch_3 ]

  # Create instance: StreamingFCLayer_Batch_4, and set properties
  set StreamingFCLayer_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFCLayer_Batch_4:1.0 StreamingFCLayer_Batch_4 ]

  # Create instance: StreamingFIFO_1, and set properties
  set StreamingFIFO_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_1:1.0 StreamingFIFO_1 ]

  # Create instance: StreamingFIFO_2, and set properties
  set StreamingFIFO_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_2:1.0 StreamingFIFO_2 ]

  # Create instance: StreamingFIFO_5, and set properties
  set StreamingFIFO_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_5:1.0 StreamingFIFO_5 ]

  # Create instance: StreamingFIFO_6, and set properties
  set StreamingFIFO_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_6:1.0 StreamingFIFO_6 ]

  # Create instance: StreamingFIFO_10, and set properties
  set StreamingFIFO_10 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_10:1.0 StreamingFIFO_10 ]

  # Create instance: StreamingMaxPool_Batch_0, and set properties
  set StreamingMaxPool_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_0:1.0 StreamingMaxPool_Batch_0 ]

  # Create instance: StreamingMaxPool_Batch_1, and set properties
  set StreamingMaxPool_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_1:1.0 StreamingMaxPool_Batch_1 ]

  # Create instance: StreamingMaxPool_Batch_2, and set properties
  set StreamingMaxPool_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingMaxPool_Batch_2:1.0 StreamingMaxPool_Batch_2 ]

  # Create interface connections
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_0_out_V_V [get_bd_intf_pins ConvolutionInputGenerator_0/out_V_V] [get_bd_intf_pins StreamingFIFO_2/in0_V_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_1_out_V_V [get_bd_intf_pins ConvolutionInputGenerator_1/out_V_V] [get_bd_intf_pins StreamingFIFO_6/in0_V_V]
  connect_bd_intf_net -intf_net ConvolutionInputGenerator_2_out_V_V [get_bd_intf_pins ConvolutionInputGenerator_2/out_V_V] [get_bd_intf_pins StreamingFIFO_10/in0_V_V]
  connect_bd_intf_net -intf_net FMPadding_Batch_0_out_V_V [get_bd_intf_pins FMPadding_Batch_0/out_V_V] [get_bd_intf_pins StreamingFIFO_1/in0_V_V]
  connect_bd_intf_net -intf_net LabelSelect_Batch_0_out_V_V [get_bd_intf_ports m_axis_0] [get_bd_intf_pins LabelSelect_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_0_out_V_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_1_out_V_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataWidthConverter_Batch_2_out_V_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/out_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_2/in0_V_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_0_out_V_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_0/in0_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_1_out_V_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_1/in0_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_2_out_V_V [get_bd_intf_pins StreamingDataWidthConverter_Batch_2/in0_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_2/out_V_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_3_out_V_V [get_bd_intf_pins StreamingFCLayer_Batch_3/out_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_4/in0_V_V]
  connect_bd_intf_net -intf_net StreamingFCLayer_Batch_4_out_V_V [get_bd_intf_pins LabelSelect_Batch_0/in0_V_V] [get_bd_intf_pins StreamingFCLayer_Batch_4/out_V_V]
  connect_bd_intf_net -intf_net StreamingFIFO_10_out_V_V [get_bd_intf_pins StreamingFCLayer_Batch_2/in0_V_V] [get_bd_intf_pins StreamingFIFO_10/out_V_V]
  connect_bd_intf_net -intf_net StreamingFIFO_1_out_V_V [get_bd_intf_pins ConvolutionInputGenerator_0/in0_V_V] [get_bd_intf_pins StreamingFIFO_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingFIFO_2_out_V_V [get_bd_intf_pins StreamingFCLayer_Batch_0/in0_V_V] [get_bd_intf_pins StreamingFIFO_2/out_V_V]
  connect_bd_intf_net -intf_net StreamingFIFO_5_out_V_V [get_bd_intf_pins ConvolutionInputGenerator_1/in0_V_V] [get_bd_intf_pins StreamingFIFO_5/out_V_V]
  connect_bd_intf_net -intf_net StreamingFIFO_6_out_V_V [get_bd_intf_pins StreamingFCLayer_Batch_1/in0_V_V] [get_bd_intf_pins StreamingFIFO_6/out_V_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_0_out_V_V [get_bd_intf_pins StreamingFIFO_5/in0_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_1_out_V_V [get_bd_intf_pins ConvolutionInputGenerator_2/in0_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingMaxPool_Batch_2_out_V_V [get_bd_intf_pins StreamingFCLayer_Batch_3/in0_V_V] [get_bd_intf_pins StreamingMaxPool_Batch_2/out_V_V]
  connect_bd_intf_net -intf_net in0_V_V_0_1 [get_bd_intf_ports s_axis_0] [get_bd_intf_pins FMPadding_Batch_0/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_0/ap_clk] [get_bd_pins ConvolutionInputGenerator_1/ap_clk] [get_bd_pins ConvolutionInputGenerator_2/ap_clk] [get_bd_pins FMPadding_Batch_0/ap_clk] [get_bd_pins LabelSelect_Batch_0/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_clk] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_clk] [get_bd_pins StreamingFCLayer_Batch_0/ap_clk] [get_bd_pins StreamingFCLayer_Batch_1/ap_clk] [get_bd_pins StreamingFCLayer_Batch_2/ap_clk] [get_bd_pins StreamingFCLayer_Batch_3/ap_clk] [get_bd_pins StreamingFCLayer_Batch_4/ap_clk] [get_bd_pins StreamingFIFO_1/ap_clk] [get_bd_pins StreamingFIFO_10/ap_clk] [get_bd_pins StreamingFIFO_2/ap_clk] [get_bd_pins StreamingFIFO_5/ap_clk] [get_bd_pins StreamingFIFO_6/ap_clk] [get_bd_pins StreamingMaxPool_Batch_0/ap_clk] [get_bd_pins StreamingMaxPool_Batch_1/ap_clk] [get_bd_pins StreamingMaxPool_Batch_2/ap_clk]
  connect_bd_net -net ap_rst_n_0_1 [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_0/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_1/ap_rst_n] [get_bd_pins ConvolutionInputGenerator_2/ap_rst_n] [get_bd_pins FMPadding_Batch_0/ap_rst_n] [get_bd_pins LabelSelect_Batch_0/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_0/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_1/ap_rst_n] [get_bd_pins StreamingDataWidthConverter_Batch_2/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_0/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_1/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_2/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_3/ap_rst_n] [get_bd_pins StreamingFCLayer_Batch_4/ap_rst_n] [get_bd_pins StreamingFIFO_1/ap_rst_n] [get_bd_pins StreamingFIFO_10/ap_rst_n] [get_bd_pins StreamingFIFO_2/ap_rst_n] [get_bd_pins StreamingFIFO_5/ap_rst_n] [get_bd_pins StreamingFIFO_6/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_0/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_1/ap_rst_n] [get_bd_pins StreamingMaxPool_Batch_2/ap_rst_n]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


