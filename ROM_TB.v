`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 04:37:32 PM
// Design Name: 
// Module Name: ROM_TB
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


module ROM_TB();
    reg [2:0] addr;
    wire [3:0] data;
    
    ROM DUT(.ROM_data(data),.ROM_addr(addr));
    initial begin
        addr=3'd0;
        #10;
        addr=3'd1;
        #10;
        addr=3'd2;
        #10;
        addr=3'd3;
        #10;
        addr=3'd4;
        #10;
        addr=3'd5;
        #10;
        addr=3'd6;
        #10;
        addr=3'd7;
        #10;
        $finish;
    end
endmodule
