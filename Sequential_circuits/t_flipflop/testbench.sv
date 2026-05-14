module tb;
  
reg T,clk;
wire Q;
  
t_ff uut(.T(T),.Q(Q),.clk(clk));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  clk = 0;
  
  forever #5 clk= ~clk;
  
end
  
initial begin
    
    T = 0;  #10;
    T = 1; #10;
     
    $finish;
  end
endmodule
    
