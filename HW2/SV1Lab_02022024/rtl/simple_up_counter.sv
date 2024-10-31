// (c) Technion IIT, Department of Electrical Engineering 2018 

// Implements a simple up-counter 

module simple_up_counter 
	(
   // Input, Output Ports
   input logic clk, 
   input logic resetN,
   output logic [3:0] count 
   );
	
   always_ff @( posedge clk or negedge resetN )
   begin
	
//------------------------------------------------------------------------------------
// &&&&&&&&&&&&&&  fill your code and paste into the report
//------------------------------------------------------------------------------------
     
		if ( !resetN ) begin // Asynchronic reset
			// RESET ROUTINE
			count <= 4'd0; 
		end 
		//COUNT UP ROUTINE
		else begin
		
			if(count == 4'd15)
			begin
				count <= 4'd0;
			end
			
			else begin
			count <= count + 4'd1;
			end
			
	
		end
		
//-------------------------------------------------------------------------------------
// &&&&&&&&&&&&&&  end of paste into the report 
//-------------------------------------------------------------------------------------

	end // always
endmodule

