// Code your testbench here
// or browse Examples
module day_4();
   logic [7:0] a;
   logic [7:0] b;
   logic [2:0] c;
   logic [7:0] out;
  
  day4 day( .a(a),  .b(b),  .c(c),  .out(out) );

  initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  end
  
  initial begin
    for (int x = 0; x < 10; x++) begin
      c   = $urandom_range (0, 8'b111);
      #5;
    end
  end
  
  initial begin
    for (int i = 0; i < 10; i++) begin
      a   = $urandom_range (0, 8'hFF);
      b   = $urandom_range (0, 8'hFF);
      #5;
    end
    $finish();
  end
endmodule
  
  
