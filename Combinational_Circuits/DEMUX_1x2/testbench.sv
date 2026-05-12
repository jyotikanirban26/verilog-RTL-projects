module tb;
  
reg S,I;
wire Y0,Y1;
  
DEMUX1x2 uut(.S(S),.I(I),.Y0(Y0),.Y1(Y1));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  S=0; I=1; I=0;  #10;
  S=1; I=0; I=1;  #10;
  $finish;
  
end
endmodule
