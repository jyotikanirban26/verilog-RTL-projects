module tb;
  
reg D, clk;
wire [3:0] Q;
  
shift_registers uut(.D(D),.Q(Q),.clk(clk));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    clk = 0;
    forever #5 clk= ~clk;
  end
  initial begin
    
    D=1; #10;
    D=0; #10;
    D=1; #10;
    D=1; #10;
    $finish;
  end
endmodule
