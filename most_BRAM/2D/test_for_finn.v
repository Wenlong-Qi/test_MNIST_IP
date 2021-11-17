`timescale 1 ns / 1 ps

module testbench
    ();

    reg     ap_clk;
    reg ap_rst_n;
    wire [7:0] m_axis_0_tdata;
    reg     m_axis_0_tready;
    wire    m_axis_0_tvalid;
    reg [7:0] s_axis_0_tdata;
    wire    s_axis_0_tready;
    reg     s_axis_0_tvalid;
    
finn_design_wrapper test_for_finn(
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axis_0_tdata(m_axis_0_tdata),
    .m_axis_0_tready(m_axis_0_tready),
    .m_axis_0_tvalid(m_axis_0_tvalid),
    .s_axis_0_tdata(s_axis_0_tdata),
    .s_axis_0_tready(s_axis_0_tready),
    .s_axis_0_tvalid(s_axis_0_tvalid)
);

reg [9:0] i;
reg [7:0] read_data [784:1];

initial begin
    
    ap_clk = 1'b0;  //reset
    ap_rst_n = 1'b0;
    m_axis_0_tready = 1'b0;
    s_axis_0_tvalid = 1'b0;
    #20; //20*512


    $readmemh("test_28_28_7.txt", read_data); //read .txt file and store in array temp
    i = 1'b0;


    @(posedge ap_clk); #10;
    ap_rst_n = 1'b1;  //begin to work
    m_axis_0_tready = 1'b1;

    #3200000;
    $finish;
end

initial begin

    @(posedge ap_rst_n);
    #1000;

    //i = 0;
    @(posedge ap_clk);
    #10;
    s_axis_0_tvalid = 1'b1;
    m_axis_0_tready = 1'b1;

    while (i < 784) begin  
        i = i + 1'b1;
        if (s_axis_0_tready) begin
            s_axis_0_tdata[7:0] <= read_data [i]; //input every 8bit data from temp into finn IP core
            end
        else begin
            i = i - 1'b1;
        end
        @(posedge ap_clk);
        #10;
    end
    s_axis_0_tvalid = 1'b0;
end

always @(posedge m_axis_0_tvalid) begin
    #5;
    m_axis_0_tready = 1'b1;
    #5;
    if (m_axis_0_tready) begin
        $display("Detected number: %0x", m_axis_0_tdata);
        end
    else;

end


always #10 ap_clk = ~ap_clk; // 50MHz clock

endmodule
