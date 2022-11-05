//------testbench of nand_gate-----


`timescale 1ns/10ps
module nand_gate_tb;
reg    aa,bb;
wire	yy;


nand_gate   nand_gate(.A(aa),.B(bb),.Y(yy));


initial begin
		aa<=0;bb<=0;
	#10	aa<=0;bb<=1;	
	#10	aa<=1;bb<=0;
	#10	aa<=1;bb<=1;	
	#10	$stop;	

end
		initial begin
			$dumpfile("test3.vcd");
			$dumpvars(0, nand_gate_tb); 
		end


endmodule
