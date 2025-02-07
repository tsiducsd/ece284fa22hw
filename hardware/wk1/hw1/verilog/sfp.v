// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module sfp (out, in, thres, acc, relu, clk, reset);

parameter bw = 4;
parameter psum_bw = 16;

input clk;
input acc;
input relu;
input reset;

input signed [bw-1:0] in;
input signed [psum_bw-1:0] thres;

output  signed [psum_bw-1:0] out;

reg  signed [psum_bw-1:0] psum_q;

// Your code goes here
assign out = psum_q;

always @(posedge clk or posedge reset) begin
	if(reset) psum_q <= 'b0;
	else begin
		if(acc) psum_q <= psum_q + in;
		else if(relu & (psum_q<0)) psum_q <='b0;
	end
end

endmodule
