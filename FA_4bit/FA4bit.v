module FA4bit (A, B, Cin, Sum, Cout);

input [3:0] A, B;
input Cin;
output [3:0] Sum;
output Cout;

wire Ctemp[2:0];


FA1bit m1(A[0], B[0], Cin, Ctemp[0], Sum[0]);
FA1bit m2(A[1], B[1], Ctemp[0], Ctemp[1], Sum[1]);
FA1bit m3(A[2], B[2], Ctemp[1], Ctemp[2], Sum[2]);
FA1bit m4(A[3], B[3], Ctemp[2], Cout, Sum[3]);

endmodule


