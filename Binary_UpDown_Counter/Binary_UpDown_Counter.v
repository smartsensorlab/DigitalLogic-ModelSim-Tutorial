module Binary_UpDown_Counter(clk, enable, ClrN, direction, data);

input clk, enable, ClrN, direction;
output reg [3:0] data;

initial begin
  data = 4'b0000;
end

always @ (posedge clk or negedge ClrN) begin
  if(ClrN == 0)
    data <= 4'b0000;
  else if (enable) begin
    if(direction == 0)
      data <= data + 1;
    else
      data <= data - 1;
  end
    
end

endmodule

