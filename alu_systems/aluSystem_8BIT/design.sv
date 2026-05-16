module aluSystem_8BIT(input [7:0] A, input [7:0] B, input [3:0] opcode, output reg [7:0] Y,output reg Cout,output reg zero, output reg equal);
  
  always@(*)
    begin
      Cout = 0;
      equal = 0;
      
      case(opcode)
        //add
        4'b0000: {Cout, Y}=A+B;
        
        //sub
        4'b0001: {Cout, Y}= A-B;
        
        //and
        4'b0010: Y=A&B;
        
        //or
        4'b0011: Y=A|B;
        
        //XOR
        4'b0100: Y=A^B;
        
        //NOT A
        4'b0101: Y = ~A;
        
        //nand
        4'b0110: Y = ~(A&B);
        
        //LEFT SHIFT
        4'b0111: Y = A<<1;
        
        //right shift
        4'b1000: Y = A >> 1;
        
        //COMPARE
        4'b1001: 
          begin
            if(A == B)
              equal = 1;
            else
              equal = 0;
            Y=8'b00000000;
          end
        
        //increment
        
        4'b1010: Y = A+1;
        
        //DECREMENT
        4'b1011: Y = A-1;
        
        default:
          Y = 8'b00000000;
      endcase
   
      //zero 
      
      if(Y==0)
        zero = 1;
      else
        zero = 0;
    end
endmodule
  
  
        
    
          
