`timescale 1ns / 1ns
module Shift_Register_tb();

reg clk, serial_in, enable;
wire serial_out;
wire [3:0] data;
Shift_Register tb_Shift_Register(clk, enable, serial_in, serial_out, data);


initial begin
  clk = 0;
  serial_in = 1;
  enable = 1;

#20;
  serial_in = 0;

#20;
  enable = 0;

#20;
  enable = 1;


end

always begin
#5 clk = ~clk;
end


endmodule


