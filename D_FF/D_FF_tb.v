`timescale 1ns / 1ns
module D_FF_tb();

reg clk, ClearN, Load, D;
wire Q;

D_FF tb_D_FF(clk, ClearN, Load, D, Q);


initial begin
  clk = 0;
  ClearN = 1;
  Load = 1;
  D = 0;

#10;
  D = 1;
#10;
  ClearN = 0;
#3;
  ClearN = 1;
#10;
  Load = 0;
#10;
  D = 0;
#10;
  Load = 1;
end


always begin
#5 clk = ~clk;
end


endmodule
