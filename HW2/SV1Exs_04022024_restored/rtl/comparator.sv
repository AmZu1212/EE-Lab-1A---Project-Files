// (c) Technion IIT, Department of Electrical Engineering 2018 

// Implements a simple equality one-bit out comparator


module comparator 
	(
   // Input, Output Ports
	input logic [3:0] vect1,
	input logic [3:0] vect2,
	output logic cmp
   );
	
//------------------------------------------------------------------------------------
// &&&&&&&&&&&&&&  fill your code and paste into the report
//------------------------------------------------------------------------------------
 	
always_comb begin
	
	if (vect1 == vect2) begin
		cmp = 1'b1;
		
	end
	else begin
		cmp = 1'b0;
	end
	
end
	
//-------------------------------------------------------------------------------------
// &&&&&&&&&&&&&&  end of paste into the report 
//-------------------------------------------------------------------------------------
	
endmodule
