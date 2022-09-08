// Code your design here
module day3
  ( input logic clk,
   input logic reset,
   input logic a_i,
   
   output logic rising_edge,
   output logic falling_edge );
  
  
  logic a_ff;
  
  always @ ( posedge clk or posedge reset)
    if (reset)
      a_ff <= 1'b0;
    else
      a_ff <= a_i;
  
  assign rising_edge = ~ a_ff & a_i;
  
  assign falling_edge = ~ a_ff & a_i;
  
endmodule
  
  
