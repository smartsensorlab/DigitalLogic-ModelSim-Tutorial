`timescale 1ns / 1ns
module Binary_UpDown_Counter_tb();

reg clk, enable, ClrN, direction;
wire [3:0] data;

Binary_UpDown_Counter tb(clk, enable, ClrN, direction, data);

initial begin
  clk = 0;
  enable = 1;
  ClrN = 1;
  direction = 0;

#20;
  ClrN = 0;

#3;
  ClrN = 1;

#27;
  enable = 0;

#10;
  enable = 1;


#50;
  enable = 1;
  ClrN = 1;
  direction = 1;

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
