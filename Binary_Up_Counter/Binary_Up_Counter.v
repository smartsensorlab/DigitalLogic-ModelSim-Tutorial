module Binary_Up_Counter(clk, enable, ClrN ,data);

input clk, enable, ClrN;
output reg [3:0] data;

initial begin
  data = 4'b0000;
end


always @ (posedge clk or negedge ClrN) begin
  if(ClrN == 0)
    data <= 4'b0000;
  else if (enable)
    data <= data + 1;
end


endmodule


