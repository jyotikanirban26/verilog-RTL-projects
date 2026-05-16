module tb;
  
reg clk;
wire [1:0] light;
  
traffic_light uut(.clk(clk),.light(light));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    clk = 0;
    forever #5 clk = ~clk;
    
  end
  initial begin
    
    #100;
    $finish;
  end
endmodule
