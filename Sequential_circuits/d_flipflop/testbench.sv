module tb;
  
reg D,clk;
wire Q;
  
d_flipflop uut(.D(D),.clk(clk),.Q(Q));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  clk=0;
  
  forever #5 clk = ~clk;
end
  
initial begin
  
  D=0;  #10;
  D=1;  #10;
 
  
  $finish;
end
endmodule
