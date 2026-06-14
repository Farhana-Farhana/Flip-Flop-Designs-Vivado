`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 02:23:29
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(
    input T,
    input clk,
    input reset,
    output reg Q
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        Q <= 0;
    else if(T)
        Q <= ~Q;
end

endmodule
