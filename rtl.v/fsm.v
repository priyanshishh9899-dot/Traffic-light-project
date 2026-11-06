module fsm(in,clk,light,rst,ld);
  input [3:0]in;
  input clk,rst,ld;
  output reg[1:0]light;
  reg [1:0]state,next_state;
  parameter red=2'b00,green=2'b01,yellow=2'b10;
  reg [3:0]count;
  
  always@(posedge clk) begin
    if(rst)
      count<=0;
    else if(ld)
      count<=in;
    else if(count<4'd10 && ((state==red)||(state==green))) 
      count<=count+1;
    else if(count<4'd5 && state==yellow)
      count<=count+1;
    else
      count<=0;
  end
  
  always@(posedge clk) begin
    if(rst)
      state<=red;
    else
      state<=next_state;
  end
    
  always@(*)begin
    state<=next_state;
    light =red;
    case(state)
      red:begin
        light=red;
        if(count==4'd10)
          next_state=green;
          
      end
      green:begin
        light=green;
        if(count==4'd10)
          next_state=yellow;
        
        end
      yellow:begin
        light=yellow;
        if(count==4'd5)
          next_state=red;
          
        end
      
     default:begin
       next_state=red;
        light=red;
     end
    endcase
  end
endmodule 
