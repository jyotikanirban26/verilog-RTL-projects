module sync_counter(input clk,output reg [3:0] Q);
  
initial begin
    Q=0;
end
  
always@(posedge clk)
begin 
    
    Q <= Q + 1; 
end 
endmodule
