module traffic_light(input clk, output reg [1:0] light);
  
  parameter GREEN = 2'b00,YELLOW = 2'b01,RED = 2'b10;
  
  reg [1:0] state;
  
  initial begin
    state= GREEN;
  end
  
  always@(posedge clk)
    begin
      case(state)
        
        GREEN:
          state <= YELLOW;
        YELLOW:
          state <= RED;
        
        RED:
          state <= GREEN;
        
        default:
          state <= GREEN;
      endcase
    end
  
  always@(*)
    begin
      
      case(state)
        GREEN: light = 2'b00;
        YELLOW: light = 2'b01;
        RED: light = 2'b10;
        
        default:
          light = 2'b00;
        
      endcase
    end
endmodule
  
  
