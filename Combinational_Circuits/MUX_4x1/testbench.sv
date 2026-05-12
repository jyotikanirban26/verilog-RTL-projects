module tb;
  
reg S0,S1,I0,I1,I2,I3;
wire Y;
  
MUX4x1 uut(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1),.Y(Y));
  
initial begin
  
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  S0=0; S1=0; I0=1;I1=0;I2=0;I3=0; #10;
  S0=0; S1=1; I0=0;I1=1;I2=0;I3=0; #10;
  S0=1; S1=0; I0=0;I1=0;I2=1;I3=0; #10;
  S0=1; S1=1; I0=0;I1=0;I2=0;I3=1; #10;
  $finish;
  
end
  
endmodule
