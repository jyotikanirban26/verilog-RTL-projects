module fulladder(
    input A, B, Cin,
    output Sum, Cout
);

assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule

module ripple_adder_4bit(input [3:0]A, B, input Cin, output [3:0] sum, output Cout);
  
  wire C1,C2,C3;
  
  fulladder FA0(A[0],B[0],Cin,  sum[0],C1);
  fulladder FA1(A[1],B[1],C1,  sum[1],C2);
  fulladder FA2(A[2],B[2],C2,  sum[2],C3);
  fulladder FA3(A[3],B[3],C3,  sum[3],Cout);
  
endmodule
