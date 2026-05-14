module tb;
  
reg clk;
wire [3:0] count;
  
downcounter_4bit uut(.clk(clk),.count(count));
  
initial begin
    
$dumpfile("dump.vcd");
$dumpvars(0,tb);
    
    clk = 0;
    
    forever #5 clk=~clk;
end
  initial begin
    
    #200;
    $finish;
  end
endmodule

