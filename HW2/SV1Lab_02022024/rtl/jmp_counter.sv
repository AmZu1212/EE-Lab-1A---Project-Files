// (c) Technion IIT, Department of Electrical Engineering 2018 

// Implements an up-counter that jumps from
// a number to another, then continues to count.
// Both numbers are set by parameters.

module jmp_counter 
	(
   // Input, Output Ports
   input logic clk, 
   input logic resetN, 
   output logic [3:0] count 
   );
	
//------------------------------------------------------------------------------------
// &&&&&&&&&&&&&&  fill your code and paste into the report
//------------------------------------------------------------------------------------

// Internal or local parameters/variables declarations

	localparam jmp_from  = 4'd3; // <------ assign here the right value 
	localparam jmp_to	= 4'd9;   // <------ assign here the right value 
 
 
   always_ff @( posedge clk or negedge resetN )
   begin
      
		if ( !resetN ) begin // Asynchronic reset
			// RESET ROUTINE
			count <= 4'd0; 
		end
		else begin
		//COUNT ROUTINE
		
		case (count)
            jmp_from: count <= jmp_to;
            4'd15: count <= 4'd0;
            default: count <= count + 4'd1;
        endcase
		end
	end // always
	
//-------------------------------------------------------------------------------------
// &&&&&&&&&&&&&&  end of paste into the report 
//-------------------------------------------------------------------------------------
endmodule

