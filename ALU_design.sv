// Code your design here
module muc
  ( input logic [1:0]a_i,
   input logic [1:0]b_i,
   input logic  clk,
   input logic  [1:0] i_sel,
   output logic [2:0]c_o );
  
  always@(posedge clk)begin
    
  if(i_sel==2'b00)begin
     c_o = a_i+b_i;
  end
  else if(i_sel==2'b01) begin
     c_o = a_i-b_i;
  end
  else if(i_sel==2'b10) begin
     c_o = a_i&b_i;
  end
  else if(i_sel==2'b11) begin
     c_o = a_i|b_i;
  end
    
  end
endmodule
