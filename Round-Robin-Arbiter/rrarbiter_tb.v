module tb;
reg clk,rst,rboss,reng,rboy;
reg rbossNBA,rengNBA,rboyNBA;
wire reg [1:0] printer;

always @* rbossNBA<=rboss;
always @* rengNBA<=reng;
always @* rboyNBA<=rboy;

rrarbiter KABALI (clk,rst,rbossNBA,rengNBA,rboyNBA,printer);

always #5 clk =! clk;

initial
	begin
	clk=0;
	rst=1;
	{rbossNBA,rengNBA,rboyNBA,rboss,reng,rboy}=0;
	#2;
	rst=0;
	end 
	
initial
	begin
	repeat(5)@(posedge clk);
	repeat(50)
		begin
		{rboss,reng,rboy}=$random;
		repeat(5) @(posedge clk);
		end 
	$finish;
	end 
	
endmodule

