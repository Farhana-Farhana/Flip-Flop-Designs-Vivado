`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 01:59:24
// Design Name: 
// Module Name: d_flipflop_tb
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


`timescale 1ns / 1ps

module d_flipflop_tb;

reg D;
reg clk;

wire Q;

d_flipflop uut(
    .D(D),
    .clk(clk),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;

    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    D = 1; #10;
    D = 0; #10;

    $finish;
end

endmodule
