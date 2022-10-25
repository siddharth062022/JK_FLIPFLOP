`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 08:50:08
// Design Name: 
// Module Name: JK_FLIPFLOPTB
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


module JK_FLIPFLOPTB;
reg CLK;  
    reg J;
    reg K;  
    wire Q;
    wire QB;
    JK_FLIPFLOP uut(.j(J),.k(K),.q(Q),.qb(QB),.clk(CLK));
 
    initial
    begin 
    CLK <=0;
   
    end
            always #10 CLK = ~CLK;
            initial
            begin
            J=0;K=0;
            #200
            J=0;K=1;
            #200
            J=1;K=0;
            #200
            J=1;K=1;
            #200
            J=0;K=0;
            #200
            J=0;K=1;
            #200
            J=1;K=0;
            #200
            J=1;K=1;
            end
   endmodule
