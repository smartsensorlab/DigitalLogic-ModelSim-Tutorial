`timescale 1ns/1ns

module FA4bit_tb();

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

FA4bit tb_FA4bit(A,B,Cin,Sum,Cout);

initial begin
  A = 4'b0000;
  B = 4'b0000;
  Cin = 0;

#10;
  A = 4'b0000;
  B = 4'b0011;
  Cin = 0;

#10;
  A = 4'b0011;
  B = 4'b0011;
  Cin = 0;

#10;
  A = 4'b1111;
  B = 4'b0011;
  Cin = 0;

end

endmodule

