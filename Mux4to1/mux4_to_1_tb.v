`timescale 1ns/1ns

module mux4_to_1_tb();

wire out;
reg i0, i1, i2, i3;
reg s1, s0;

mux4_to_1 tb_mux(out, i0, i1, i2, i3, s1, s0);

initial begin
  {i0, i1, i2, i3} = 4'b0000;
  {s1, s0} = 2'b00;

#10;
  {i0, i1, i2, i3} = 4'b0101;
  {s1, s0} = 2'b00;

#10;
  {i0, i1, i2, i3} = 4'b0101;
  {s1, s0} = 2'b01;

#10;
  {i0, i1, i2, i3} = 4'b0101;
  {s1, s0} = 2'b10;

#10;
  {i0, i1, i2, i3} = 4'b0101;
  {s1, s0} = 2'b11;

#10;
  {i0, i1, i2, i3} = 4'b1001;
  {s1, s0} = 2'b00;

#10;
  {i0, i1, i2, i3} = 4'b1001;
  {s1, s0} = 2'b01;

#10;
  {i0, i1, i2, i3} = 4'b1001;
  {s1, s0} = 2'b10;

#10;
  {i0, i1, i2, i3} = 4'b1001;
  {s1, s0} = 2'b11;

end

endmodule