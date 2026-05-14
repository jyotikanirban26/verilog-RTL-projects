module async_counter(input clk, output reg [3:0] Q);
  
  initial begin
    Q=0;
    
  end
  always@(posedge clk)
    
    Q[0] <= ~Q[0];
    
  always@(posedge Q[0])
    Q[1] <= ~Q[1];
  
  always@(posedge Q[1])
    Q[2] <= ~Q[2];
  
  always@(posedge Q[2])
    Q[3] <= ~Q[3];
  
  
endmodule
  
  
