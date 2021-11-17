// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "block" *) module StreamingFCLayer_Batch_2_StreamingFCLayer_g8j_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 40;
parameter AWIDTH = 9;
parameter MEM_SIZE = 270;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./StreamingFCLayer_Batch_2_StreamingFCLayer_g8j_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module StreamingFCLayer_Batch_2_StreamingFCLayer_g8j(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd40;
parameter AddressRange = 32'd270;
parameter AddressWidth = 32'd9;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



StreamingFCLayer_Batch_2_StreamingFCLayer_g8j_rom StreamingFCLayer_Batch_2_StreamingFCLayer_g8j_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

