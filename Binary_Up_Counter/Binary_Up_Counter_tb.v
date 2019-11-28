`timescale 1ns / 1ns
module Binary_Up_Counter_tb();

reg clk, enable, ClrN;
wire [3:0] data;
Binary_Up_Counter tb(clk, enable, ClrN ,data);

initial begin
  clk = 0;
  enable = 1;
  ClrN = 1;

#20;
  ClrN = 0;

#3;
  ClrN = 1;

#27;
  enable = 0;

#10;
  enable = 1;
end


always begin
#5 clk = ~clk;
end

endmodule
