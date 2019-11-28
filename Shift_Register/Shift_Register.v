module Shift_Register(clk, enable, serial_in, serial_out, data);

input clk, serial_in, enable;
output reg serial_out;

output reg [3:0] data;


initial begin
  data = 4'b0000;
end

always @ (posedge clk) begin
  if (enable) begin
    serial_out <= data[0];
    data <= data>>1;
    data[3] <= serial_in;
  end
  else
    data <= data;
end


endmodule

