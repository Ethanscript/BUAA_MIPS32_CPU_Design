`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:27 11/10/2019 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input [31:0] alu_input1,
    input [31:0] alu_input2,
    input [2:0] aluop,
    output [31:0] alu_out,
	 output alu_zero
    );
	
	assign alu_out = (aluop==3'b000)? alu_input1 & alu_input2:
						  (aluop==2'b001)? alu_input1 | alu_input2:
						  (aluop==2'b010)? alu_input1 + alu_input2:
						  (aluop==2'b011)? alu_input1 - alu_input2:0;
	assign alu_zero = (alu_input1==alu_input2)? 1:0;

endmodule
