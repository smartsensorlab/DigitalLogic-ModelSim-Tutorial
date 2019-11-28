module D_FF(clk, ClearN, Load, D, Q);

input clk, ClearN, Load, D;
output reg Q;

always @ (posedge clk or negedge ClearN) begin
  if(ClearN == 0)
    Q <= 0;
  else if (Load)
    Q <= D;
end


endmodule