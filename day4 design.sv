// Code your design here
module day4
 (
   input logic [7:0] a,
   input logic [7:0] b,
   input logic [2:0] c,
   output logic [7:0] out );
  
  localparam add=3'b000;
  localparam sub=3'b001;
  localparam aand=3'b010;
  localparam oor=3'b100;
  localparam xorr=3'b110;
  localparam norr=3'b101;
  localparam sll=3'b011;
  localparam lsr=3'b111;
  
  logic carry;
  
  always_comb begin
    case (c) 
      add: {carry,out} = {1'b0 , a} + {1'b0 , b};
      aand: out = a[7:0] & b[7:0];
      sub: out = a - b;
      oor: out = a|b;
      xorr: out = a^b;
      norr: out=  ~(a|b);
    endcase
      end
      endmodule
