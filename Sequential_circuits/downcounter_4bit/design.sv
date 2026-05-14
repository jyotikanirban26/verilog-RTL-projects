module downcounter_4bit(input clk,output reg [3:0] count);
  
  initial begin
    count= 4'b1111;
  end
  
  always@(posedge clk)
    begin
      
      count <= count - 1;
      
    end
endmodule
