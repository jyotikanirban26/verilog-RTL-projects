module tb;

reg A,B,Cin;
wire sum,Cout;
  
fulladder uut(.A(A),.B(B),.Cin(Cin),.sum(sum),.Cout(Cout));
  
initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
     A=0;B=0;Cin=0;  #10;
     A=0;B=0;Cin=1;  #10;
     A=0;B=1;Cin=0;  #10;
     A=0;B=1;Cin=1;  #10;
     A=1;B=0;Cin=0;  #10;
     A=1;B=0;Cin=1;  #10;
     A=1;B=1;Cin=0;  #10;
     A=1;B=1;Cin=1;  #10;
    $finish;
    
  end
endmodule
