`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 02:23:49
// Design Name: 
// Module Name: t_flipflop_tb
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

module t_flipflop_tb;

reg T;
reg clk;
reg reset;

wire Q;

t_flipflop uut(
    .T(T),
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
    T = 0;

    // Apply reset
    #10;
    reset = 0;

    // Toggle mode
    T = 1;
    #40;

    // Hold mode
    T = 0;
    #20;

    // Toggle mode again
    T = 1;
    #40;

    $finish;
end

// Monitor values
initial
begin
    $monitor("Time=%0t T=%b Q=%b",
              $time, T, Q);
end

endmodule
