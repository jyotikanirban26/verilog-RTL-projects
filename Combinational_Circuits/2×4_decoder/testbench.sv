module tb;

reg A1,A0;
wire Y3,Y2,Y1,Y0;
  
decoder uut(.A1(A1),.A0(A0),.Y3(Y3),.Y2(Y2),.Y1(Y1),.Y0(Y0));
  
initial begin
  
$dumpfile("dump.vcd");
$dumpvars(0,tb);
            
            A1=0; A0=0; #10;
            A1=0; A0=1; #10;
            A1=1; A0=0; #10;
            A1=1; A0=1; #10;
            
            $finish;
end
            
endmodule
       
            
       
       
