module complement_generator(B, M, x);
  input [3:0]B;
  input M;
  output [3:0]x;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9;
  xor (x[0],B[0],M);
  assign x[1]=B[1];
  xor (w5,B[1],B[2]);
  and(w9,w5,M);
  not (w1,M);
  and (w6,B[2],w1);
  or (x[2],w9,w6);
  not (w2,B[1]);
  not (w3,B[2]);
  not (w4,B[3]);
  and (w8,M,w2,w3,w4);
  and (w7,B[3],w1);
  or (x[3],w8,w7);
endmodule

module fulladd4(a, b, c_in,sum, c_out);
  //i/o port declaration
  input [3:0] a, b;
  input c_in;
  output [3:0] sum;
  output c_out;
  //internal net
  wire c1, c2, c3;
  fulladd fa0(a[0], b[0], c_in, sum[0], c1);
  fulladd fa1(a[1], b[1], c1, sum[1], c2);
  fulladd fa2(a[2], b[2], c2, sum[2], c3);
  fulladd fa3(a[3], b[3], c3, sum[3], c_out);
endmodule

module bcd_adder( A, B, CIN, F, COUT);
  input [3:0] A, B;
  input CIN;
  output [3:0] F;
  output COUT;
  wire [3:0] Z,S;
  wire k,w1,w2,w3;
  fulladd4 add0(A, B, CIN, Z, k);
  and (w1,Z[3],Z[2]);
  and (w2,Z[3],Z[1]);
  or (COUT,k,w1,w2);
  assign S = {1'b0,COUT,COUT,1'b0};
  fulladd4 add1(Z, S, 0,F,w3);
endmodule

module add_sub_2digit(A2,A1,B2,B1,CIN,M,F2,F1,COUT);
  input [3:0]A1,B1;
  input [7:4]A2,B2;
  input CIN,M;
  output [3:0]F1;
  output [7:4]F2;
  output COUT;
  wire COUT1;
  wire [3:0]W1;
  wire [7:4]W2;
  complement_generator comgen0(B1,M,W1);
  complement_generator comgen1(B2,M,W2);
  bcd_adder add0(A1,W1,CIN, F1, COUT1);
  bcd_adder add1(A2,W2,COUT1,F2, COUT);
endmodule