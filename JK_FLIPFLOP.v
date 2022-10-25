`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 15:08:12
// Design Name: 
// Module Name: JK_FLIPFLOP
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


module JK_FLIPFLOP(j,k,clk,q,qb);
reg q,qb; 
input clk;
 input j,k; 
output q,qb;
initial
begin
q<=0;
qb<=0;
end
always@(posedge clk)
begin 
   case({j,k})
       00:q<=q;  
       01:q<=0;
       10:q<=1;   
       11:q<=qb;
endcase
qb=~q;
end
endmodule
