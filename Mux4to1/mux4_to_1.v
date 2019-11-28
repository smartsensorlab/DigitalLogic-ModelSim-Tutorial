module mux4_to_1 (out, i0, i1, i2, i3, s1, s0);

output reg out;
input i0, i1, i2, i3;
input s1, s0;

always @(s1 or s0 or i0 or i1 or i2 or i3) begin
  case({s1, s0})
    2'd0: out = i0;
    2'd1: out = i1;
    2'd2: out = i2;
    2'd3: out = i3;
    default: $display("invalid control signals");
  endcase
end

endmodule