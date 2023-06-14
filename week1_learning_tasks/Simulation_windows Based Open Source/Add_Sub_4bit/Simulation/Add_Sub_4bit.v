//adder_subtactor_4bit.v

module full_adder(a,b,cin,sum,co);

input a,b,cin;
output sum,co;

assign sum=a^b^cin;
assign co=(a&b)|(a&cin)|(cin&b);

endmodule

module adder_4bit ( a ,b ,sum ,carry_out );

output [3:0] sum ;
output carry_out ;

input [3:0] a ;
input [3:0] b ; 

wire [2:0]c;

full_adder fa_dut1(a[0],b[0],1'b0,sum[0],c[0]);
full_adder fa_dut2(a[1],b[1],c[0],sum[1],c[1]);
full_adder fa_dut3(a[2],b[2],c[1],sum[2],c[2]);
full_adder fa_dut4(a[3],b[3],c[2],sum[3],carry_out);

endmodule

module subtractor_4bit ( a ,b ,diff ,borrow );

output [3:0] diff ;
output borrow ;

input [3:0] a ;
input [3:0] b ;

wire [2:0]s;
wire [3:0]l;

xor(l[0],b[0],1'b1);
xor(l[1],b[1],1'b1);
xor(l[2],b[2],1'b1);
xor(l[3],b[3],1'b1);

full_adder fa_dut1(a[0],l[0],1'b1,diff[0],s[0]);
full_adder fa_dut2(a[1],l[1],s[0],diff[1],s[1]);
full_adder fa_dut3(a[2],l[2],s[1],diff[2],s[2]);
full_adder fa_dut4(a[3],l[3],s[2],diff[3],borrow);

endmodule

module mux_4bit ( add ,sub , sel_add1_sub0, dout );
output [4:0]dout ;
input [4:0]add ;
input [4:0]sub ;
input sel_add1_sub0 ;
   
assign dout = sel_add1_sub0 ? add : sub;

endmodule

module adder_subtractor_4bit(a,b,sel_add1_sub0,sum_diff,carry_borrow_out);

output [3:0] sum_diff;
output carry_borrow_out;

input [3:0] a ;
input [3:0] b ;
input sel_add1_sub0 ;   

wire [3:0]sum1;
wire carry_out;

wire [3:0]diff1;
wire borrow;

wire [4:0]add,sub,dout;

assign add={carry_out,sum1};
assign sub={borrow,diff1};

assign carry_borrow_out=dout[4];
assign sum_diff=dout[3:0];

adder_4bit adder_dut(.a(a),.b(b),.sum(sum1),.carry_out(carry_out));

subtractor_4bit sub_dut(.a(a),.b(b),.diff(diff1),.borrow(borrow));

mux_4bit mux_dut(.add(add),.sub(sub),.sel_add1_sub0(sel_add1_sub0),.dout(dout));


endmodule