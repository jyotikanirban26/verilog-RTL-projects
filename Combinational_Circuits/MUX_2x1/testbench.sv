module tb;
  
reg A,B,S;
wire Y;
  
mux2x1 uut(.A(A),.B(B),.S(S),.Y(Y));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  S=0; A=0; B=1; #10;
  S=0; A=1; B=0; #10;
  S=1; A=0; B=1; #10;
  S=1; A=1; B=0; #10;
  $finish;
  
end
  
endmodule
