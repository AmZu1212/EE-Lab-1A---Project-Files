// (c) Technion IIT, Department of Electrical Engineering 2018 

// Implements mux 4=>1 with case statement
// combinatorial
module mux_2to1_if (
  input logic [1:0] datain,
  input logic  select,
  output logic outd
);



//-------------------------------------------------------------------------
// &&&&&&&&&&&&&&  fill your code and paste into the report
//-------------------------------------------------------------------------
  always_comb 
  begin
  
    if (select == 1'b0)
      outd = datain[0];
    
    else
      outd = datain[1];
  end

//--------------------------------------------------------------------------
// &&&&&&&&&&&&&&  end of paste into the report 
//-------------------------------------------------------------------------- 
  
endmodule
