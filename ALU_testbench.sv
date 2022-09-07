// Code your testbench here
// or browse Examples
module muc_tb();
  logic [1:0] a_i;
  logic [1:0] b_i;
  logic  clk=0;
  logic  [1:0]i_sel;
  logic [2:0] c_o;
  
  muc muc1(.a_i(a_i), .b_i(b_i), .clk(clk), .i_sel(i_sel), .c_o(c_o) );
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
  forever begin
    
    #2
    clk=~clk;
    
  end
  end
  
  initial begin
    
    #2
    i_sel=2'b00;
    
    #2
    a_i=2'b00;
    b_i=2'b00;
    
    #2
    a_i=2'b01;
    b_i=2'b01;
    
    #2
    a_i=2'b10;
    b_i=2'b10;
    
    #2
    a_i=2'b11;
    b_i=2'b11;
    
  
  #2
  $stop();
  $finish();
  end
endmodule
