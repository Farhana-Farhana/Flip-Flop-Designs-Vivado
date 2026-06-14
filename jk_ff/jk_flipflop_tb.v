`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 02:02:27
// Design Name: 
// Module Name: jk_flipflop_tb
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

module jk_flipflop_tb;

reg J;
reg K;
reg clk;
reg reset;

wire Q;

jk_flipflop uut(
    .J(J),
    .K(K),
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    J = 0;
    K = 0;

    // Apply Reset
    #10;
    reset = 0;

    // Hold State (J=0, K=0)
    J = 0;
    K = 0;
    #10;

    // Reset State (J=0, K=1)
    J = 0;
    K = 1;
    #10;

    // Set State (J=1, K=0)
    J = 1;
    K = 0;
    #10;

    // Toggle State (J=1, K=1)
    J = 1;
    K = 1;
    #20;

    // Hold State
    J = 0;
    K = 0;
    #10;

    // Toggle Again
    J = 1;
    K = 1;
    #20;

    $finish;
end

endmodule
