`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2024 14:45:50
// Design Name: 
// Module Name: basic_calculator
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


module basic_calculator(
    input [9:0] sw,
    output [7:0] led
    );
    
    
    wire [7:0] add;
    wire [7:0] sub;
    wire [7:0] mult;
    wire [7:0] div;
    
    assign add= sw[7:4] + sw[3:0];
    assign sub= sw[7:4] - sw[3:0];
    assign mult= sw[7:4] * sw[3:0];
    assign div= sw[7:4] / sw[3:0];
    
    assign led=({8{~sw[9]}} & {8{~sw[8]}} & add) |( {8{~sw[9]}} & {8{sw[8]}} & sub )| ({8{sw[9]}} & {8{~sw[8]}} & mult) | ({8{sw[9]}} & {8{sw[8]}} & div); 
    
endmodule
