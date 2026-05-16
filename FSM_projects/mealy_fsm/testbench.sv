module tb;
  
  reg x,clk;
  wire z;
  
  mealy_fsm uut(.x(x),.clk(clk),.z(z));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    clk=0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    
    x=1;  #10;
    x=0;  #10;
    x=1;  #10;
    
    x=1;  #10;
    x=0;  #10;
    x=1;  #10;
    #20;
    
    $finish;
  end
endmodule
