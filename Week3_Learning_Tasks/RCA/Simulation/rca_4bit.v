module full_adder(a,b,cin,sum,co);

input a,b,cin;
output sum,co;

assign sum=a^b^cin;
assign co=(a&b)|(a&cin)|(cin&b);

endmodule

module adder_4bit (a,b,cin,sum,cout);

output [3:0]sum;
output cout;

input [3:0]a;
input [3:0]b;
input cin;

  wire [2:0]c;

  full_adder u0 (a[0],b[0],cin,sum[0],c[0]);
  full_adder u1 (a[1],b[1],c[0],sum[1],c[1]);
  full_adder u2 (a[2],b[2],c[1],sum[2],c[2]);
  full_adder u3 (a[3],b[3],c[2],sum[3],cout);

endmodule