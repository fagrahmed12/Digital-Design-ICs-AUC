module Digital_project #( parameter IN_WIDTH=32 )
(
input  clk, rst, valid_in, 
output  valid_out,
input  signed [IN_WIDTH        - 1: 0] a, //S31 = 32 bits
input  signed [IN_WIDTH        - 1: 0] b, //S31 = 32 bits
input  signed [IN_WIDTH        - 1: 0] c, //S31 = 32 bits
input  signed [IN_WIDTH        - 1: 0] d, //S31 = 32 bits
output signed [(2*IN_WIDTH)+2  - 1: 0] p);

reg signed [IN_WIDTH     + 1   - 1: 0]    add1 = 0; //S32 = 33 bits
reg signed [(2*IN_WIDTH) + 1   - 1: 0]   mult1 = 0;	//(S31*S32) = S(31+32+1) = 1 + 64 = S64 = 65 bits
reg signed [(2*IN_WIDTH) + 2   - 1: 0]    add2 = 0; //S64 + S32 = S(64 +1) = 66 bits

reg add1v  = 0;
reg mult1v = 0;
reg add2v  = 0;

assign p = add2;
assign valid_out = add2v;




always@(posedge(clk),negedge(rst))
begin
	if(rst == 1'b0) begin
		add1      <= 0;
		mult1     <= 0;
		add2      <= 0;
		add1v     <=  0;
	end
	else if (valid_in == 1) begin
		add1      <=     a + d;
		add1v     <=  1;
		mult1     <=  add1 * b;
		add2      <= mult1 + c;
	end
	else begin
	    add1      <=  add1; 
	    mult1     <= mult1;
	    add2      <=  add2;
		add1v     <=  0;
	end
end	
always@(posedge(clk),negedge(rst))
begin
	if(rst == 1'b0) begin

	end
	else if (valid_in == 1)  begin
		mult1v <= (add1v==1) ? 1 : 0;
		add2v <= (mult1v==1) ? 1 : 0;
		
	end
	else begin
			mult1v <= 0;
			add2v <=  0;
	end
end
endmodule