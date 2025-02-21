module rrarbiter (
input clk,rst,rboss,reng,rboy,
output reg [1:0] printer);

enum {BUsing,EUsing,YUsing,BRU,ERU,YRU} state;

always @(posedge clk or posedge rst)
begin
	if (rst) state<=YRU;
	else 
	case (state)
	/*NONE: case (1) 
			rboss: state<=BUsing;
			reng: state<=EUsing;
			rboy: state<=YUsing;
			default: state<=NONE;
			endcase
	*/
	
	YRU: case (1) 
			rboss: state<=BUsing;
			reng: state<=EUsing;
			rboy: state<=YUsing;
			default: state<=YRU;
		 endcase
		 
	BUsing: case(1)
				rboss: state<=BUsing;
				reng: state<=EUsing;
				rboy: state<=YUsing;
				default: state<=BRU;
			endcase 
			
	EUsing: case(1)
				reng: state<=EUsing;
				rboy: state<=YUsing;
				rboss: state<=BUsing;
				default: state<=ERU;
			endcase
			
	YUsing: case(1)
				rboy: state<=YUsing;
				rboss: state<=BUsing;
				reng: state<=EUsing;
				default: state<=YRU;
			endcase
			
	BRU: case(1)
			reng: state<=EUsing;
			rboy: state<=YUsing;
			rboss: state<=BUsing;
			default: state<=BRU;
			endcase 
			
	ERU: case(1) 
			rboy: state<=YUsing;
			rboss: state<= BUsing;
			reng: state<=EUsing;
			default: state<=ERU;
		endcase 
		
	endcase 
end 

always @*
begin
	case(state)
	BRU,ERU,YRU: printer=2'b00;
	BUsing: printer=2'b01;
	EUsing: printer=2'b10;
	YUsing: printer=2'b11;
	default: printer=2'b00;
	endcase 
end 

endmodule
