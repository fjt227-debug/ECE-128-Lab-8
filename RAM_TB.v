`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 04:37:06 PM
// Design Name: 
// Module Name: RAM_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_TB();
localparam DATA_W=8;
localparam SIZE=8;
localparam ADDR_W=3;

reg clk;
reg rst;
reg write_en;
reg [ADDR_W-1:0] addr;
reg [DATA_W-1:0] wdata;
wire [DATA_W-1:0] rdata;

RAM dut (.i_clk(clk),.i_rst(rst),.i_write_en(write_en),.i_addr(addr),.i_write_data(wdata),.o_read_data(rdata));
initial clk = 0;
always #5 clk = ~clk;

initial begin
    write_en=1'b0;
    addr=0;
    wdata=0;
    
    rst=1'b1;
    @(posedge clk);
    @(posedge clk);
    rst = 1'b0;
    
    write_en = 1'b1;
    addr=3'd0;
    wdata=8'h11;
    @(posedge clk);
    addr=3'd1;
    wdata=8'h22;
    @(posedge clk);
    addr=3'd2;
    wdata=8'h33;
    @(posedge clk);
    write_en = 1'b0;
    
    addr=3'd0;
    @(posedge clk);
    addr=3'd1;
    @(posedge clk);
    addr=3'd2;
    @(posedge clk);
    
    $finish;
  end
endmodule
