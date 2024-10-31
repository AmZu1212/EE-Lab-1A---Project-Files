// (c) Technion IIT, Department of Electrical Engineering 2018 

// Implements mux 4=>1 with case statement
// combinatorial
module mux_4to1_if (
  input logic [3:0] datain,
  input logic [1:0] select,
  output logic outd
);



//-------------------------------------------------------------------------
// &&&&&&&&&&&&&&  fill your code and paste into the report
//-------------------------------------------------------------------------
  always_comb 
  begin
  
    if (select == 2'b00)
      outd = datain[0];
    else if (select == 2'b01)
      outd = datain[1];
    else if (select == 2'b10)
      outd = datain[2];
    else
      outd = datain[3];
  end

//--------------------------------------------------------------------------
// &&&&&&&&&&&&&&  end of paste into the report 
//-------------------------------------------------------------------------- 
  
endmodule
