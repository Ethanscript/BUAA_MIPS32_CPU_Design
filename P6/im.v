`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:54 11/22/2019 
// Design Name: 
// Module Name:    im 
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
module im(
    input [31:0] address,
    output [31:0] instr
    );
	
	 reg [31:0]IM[4095:0]; 
	 wire [31:0] im_addr;
	 assign im_addr = address - 32'h3000;
	 
	 integer i;
	 initial begin
			for(i=0;i<=4095;i=i+1) begin
				IM[i] = 0;//initial����������ֵ��������������������readmemh
			end
			$readmemh ("code.txt",IM); //�����ʼ��
	 end
	 assign instr = IM[im_addr[13:2]];
endmodule
