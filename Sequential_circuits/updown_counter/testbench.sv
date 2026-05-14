module tb;
  
  reg clk,mode;
  wire [3:0] count;
  
  updown_counter uut(.clk(clk),.count(count),.mode(mode));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    clk = 0;
    forever #5 clk=~clk;
  end
  initial begin
    
    mode=1;  #50;
    mode=0;  #50;
    $finish;
  end
endmodule
