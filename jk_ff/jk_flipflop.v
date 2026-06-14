`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 02:02:11
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
    input J,
    input K,
    input clk,
    input reset,
    output reg Q
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        Q <= 0;
    else
    begin
        case({J,K})

            2'b00:
                Q <= Q;      // Hold

            2'b01:
                Q <= 0;      // Reset

            2'b10:
                Q <= 1;      // Set

            2'b11:
                Q <= ~Q;     // Toggle

        endcase
    end
end

endmodule
