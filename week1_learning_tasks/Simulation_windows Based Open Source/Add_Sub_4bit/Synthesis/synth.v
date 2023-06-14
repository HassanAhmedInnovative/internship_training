/* Generated by Yosys 0.29+11 (git sha1 d82bae32b, x86_64-w64-mingw32-g++ 9.2.1 -Os) */

module adder_subtractor_4bit(a, b, sel_add1_sub0, sum_diff, carry_borrow_out);
  input [3:0] a;
  wire [3:0] a;
  wire [4:0] add;
  wire [3:0] \adder_dut.a ;
  wire [3:0] \adder_dut.b ;
  wire [2:0] \adder_dut.c ;
  wire \adder_dut.carry_out ;
  wire \adder_dut.fa_dut1.a ;
  wire \adder_dut.fa_dut1.b ;
  wire \adder_dut.fa_dut1.cin ;
  wire \adder_dut.fa_dut1.co ;
  wire \adder_dut.fa_dut1.sum ;
  wire \adder_dut.fa_dut2.a ;
  wire \adder_dut.fa_dut2.b ;
  wire \adder_dut.fa_dut2.cin ;
  wire \adder_dut.fa_dut2.co ;
  wire \adder_dut.fa_dut2.sum ;
  wire \adder_dut.fa_dut3.a ;
  wire \adder_dut.fa_dut3.b ;
  wire \adder_dut.fa_dut3.cin ;
  wire \adder_dut.fa_dut3.co ;
  wire \adder_dut.fa_dut3.sum ;
  wire \adder_dut.fa_dut4.a ;
  wire \adder_dut.fa_dut4.b ;
  wire \adder_dut.fa_dut4.cin ;
  wire \adder_dut.fa_dut4.co ;
  wire \adder_dut.fa_dut4.sum ;
  wire [3:0] \adder_dut.sum ;
  input [3:0] b;
  wire [3:0] b;
  wire borrow;
  output carry_borrow_out;
  wire carry_borrow_out;
  wire carry_out;
  wire [3:0] diff1;
  wire [4:0] dout;
  wire [4:0] \mux_dut.add ;
  wire [4:0] \mux_dut.dout ;
  wire \mux_dut.sel_add1_sub0 ;
  wire [4:0] \mux_dut.sub ;
  input sel_add1_sub0;
  wire sel_add1_sub0;
  wire [4:0] sub;
  wire [3:0] \sub_dut.a ;
  wire [3:0] \sub_dut.b ;
  wire \sub_dut.borrow ;
  wire [3:0] \sub_dut.diff ;
  wire \sub_dut.fa_dut1.a ;
  wire \sub_dut.fa_dut1.b ;
  wire \sub_dut.fa_dut1.cin ;
  wire \sub_dut.fa_dut1.co ;
  wire \sub_dut.fa_dut1.sum ;
  wire \sub_dut.fa_dut2.a ;
  wire \sub_dut.fa_dut2.b ;
  wire \sub_dut.fa_dut2.cin ;
  wire \sub_dut.fa_dut2.co ;
  wire \sub_dut.fa_dut2.sum ;
  wire \sub_dut.fa_dut3.a ;
  wire \sub_dut.fa_dut3.b ;
  wire \sub_dut.fa_dut3.cin ;
  wire \sub_dut.fa_dut3.co ;
  wire \sub_dut.fa_dut3.sum ;
  wire \sub_dut.fa_dut4.a ;
  wire \sub_dut.fa_dut4.b ;
  wire \sub_dut.fa_dut4.cin ;
  wire \sub_dut.fa_dut4.co ;
  wire \sub_dut.fa_dut4.sum ;
  wire [3:0] \sub_dut.l ;
  wire [2:0] \sub_dut.s ;
  wire [3:0] sum1;
  output [3:0] sum_diff;
  wire [3:0] sum_diff;
  sky130_fd_sc_hd__maj3_1 _00_ (
    .A(\adder_dut.fa_dut1.b ),
    .B(\adder_dut.fa_dut1.a ),
    .C(\adder_dut.fa_dut1.cin ),
    .X(\adder_dut.fa_dut1.co )
  );
  sky130_fd_sc_hd__xor3_1 _01_ (
    .A(\adder_dut.fa_dut1.b ),
    .B(\adder_dut.fa_dut1.a ),
    .C(\adder_dut.fa_dut1.cin ),
    .X(\adder_dut.fa_dut1.sum )
  );
  sky130_fd_sc_hd__maj3_1 _02_ (
    .A(\adder_dut.fa_dut2.b ),
    .B(\adder_dut.fa_dut2.a ),
    .C(\adder_dut.fa_dut2.cin ),
    .X(\adder_dut.fa_dut2.co )
  );
  sky130_fd_sc_hd__xor3_1 _03_ (
    .A(\adder_dut.fa_dut2.b ),
    .B(\adder_dut.fa_dut2.a ),
    .C(\adder_dut.fa_dut2.cin ),
    .X(\adder_dut.fa_dut2.sum )
  );
  sky130_fd_sc_hd__maj3_1 _04_ (
    .A(\adder_dut.fa_dut3.b ),
    .B(\adder_dut.fa_dut3.a ),
    .C(\adder_dut.fa_dut3.cin ),
    .X(\adder_dut.fa_dut3.co )
  );
  sky130_fd_sc_hd__xor3_1 _05_ (
    .A(\adder_dut.fa_dut3.b ),
    .B(\adder_dut.fa_dut3.a ),
    .C(\adder_dut.fa_dut3.cin ),
    .X(\adder_dut.fa_dut3.sum )
  );
  sky130_fd_sc_hd__maj3_1 _06_ (
    .A(\adder_dut.fa_dut4.b ),
    .B(\adder_dut.fa_dut4.a ),
    .C(\adder_dut.fa_dut4.cin ),
    .X(\adder_dut.fa_dut4.co )
  );
  sky130_fd_sc_hd__xor3_1 _07_ (
    .A(\adder_dut.fa_dut4.b ),
    .B(\adder_dut.fa_dut4.a ),
    .C(\adder_dut.fa_dut4.cin ),
    .X(\adder_dut.fa_dut4.sum )
  );
  sky130_fd_sc_hd__mux2_1 _08_ (
    .A0(\mux_dut.sub [0]),
    .A1(\mux_dut.add [0]),
    .S(\mux_dut.sel_add1_sub0 ),
    .X(\mux_dut.dout [0])
  );
  sky130_fd_sc_hd__mux2_1 _09_ (
    .A0(\mux_dut.sub [1]),
    .A1(\mux_dut.add [1]),
    .S(\mux_dut.sel_add1_sub0 ),
    .X(\mux_dut.dout [1])
  );
  sky130_fd_sc_hd__mux2_1 _10_ (
    .A0(\mux_dut.sub [2]),
    .A1(\mux_dut.add [2]),
    .S(\mux_dut.sel_add1_sub0 ),
    .X(\mux_dut.dout [2])
  );
  sky130_fd_sc_hd__mux2_1 _11_ (
    .A0(\mux_dut.sub [3]),
    .A1(\mux_dut.add [3]),
    .S(\mux_dut.sel_add1_sub0 ),
    .X(\mux_dut.dout [3])
  );
  sky130_fd_sc_hd__mux2_1 _12_ (
    .A0(\mux_dut.sub [4]),
    .A1(\mux_dut.add [4]),
    .S(\mux_dut.sel_add1_sub0 ),
    .X(\mux_dut.dout [4])
  );
  sky130_fd_sc_hd__clkinv_1 _13_ (
    .A(\sub_dut.b [2]),
    .Y(\sub_dut.l [2])
  );
  sky130_fd_sc_hd__clkinv_1 _14_ (
    .A(\sub_dut.b [3]),
    .Y(\sub_dut.l [3])
  );
  sky130_fd_sc_hd__clkinv_1 _15_ (
    .A(\sub_dut.b [0]),
    .Y(\sub_dut.l [0])
  );
  sky130_fd_sc_hd__clkinv_1 _16_ (
    .A(\sub_dut.b [1]),
    .Y(\sub_dut.l [1])
  );
  sky130_fd_sc_hd__maj3_1 _17_ (
    .A(\sub_dut.fa_dut1.b ),
    .B(\sub_dut.fa_dut1.a ),
    .C(\sub_dut.fa_dut1.cin ),
    .X(\sub_dut.fa_dut1.co )
  );
  sky130_fd_sc_hd__xor3_1 _18_ (
    .A(\sub_dut.fa_dut1.b ),
    .B(\sub_dut.fa_dut1.a ),
    .C(\sub_dut.fa_dut1.cin ),
    .X(\sub_dut.fa_dut1.sum )
  );
  sky130_fd_sc_hd__maj3_1 _19_ (
    .A(\sub_dut.fa_dut2.b ),
    .B(\sub_dut.fa_dut2.a ),
    .C(\sub_dut.fa_dut2.cin ),
    .X(\sub_dut.fa_dut2.co )
  );
  sky130_fd_sc_hd__xor3_1 _20_ (
    .A(\sub_dut.fa_dut2.b ),
    .B(\sub_dut.fa_dut2.a ),
    .C(\sub_dut.fa_dut2.cin ),
    .X(\sub_dut.fa_dut2.sum )
  );
  sky130_fd_sc_hd__maj3_1 _21_ (
    .A(\sub_dut.fa_dut3.b ),
    .B(\sub_dut.fa_dut3.a ),
    .C(\sub_dut.fa_dut3.cin ),
    .X(\sub_dut.fa_dut3.co )
  );
  sky130_fd_sc_hd__xor3_1 _22_ (
    .A(\sub_dut.fa_dut3.b ),
    .B(\sub_dut.fa_dut3.a ),
    .C(\sub_dut.fa_dut3.cin ),
    .X(\sub_dut.fa_dut3.sum )
  );
  sky130_fd_sc_hd__maj3_1 _23_ (
    .A(\sub_dut.fa_dut4.b ),
    .B(\sub_dut.fa_dut4.a ),
    .C(\sub_dut.fa_dut4.cin ),
    .X(\sub_dut.fa_dut4.co )
  );
  sky130_fd_sc_hd__xor3_1 _24_ (
    .A(\sub_dut.fa_dut4.b ),
    .B(\sub_dut.fa_dut4.a ),
    .C(\sub_dut.fa_dut4.cin ),
    .X(\sub_dut.fa_dut4.sum )
  );
  assign add = { carry_out, sum1 };
  assign carry_borrow_out = dout[4];
  assign sub = { borrow, diff1 };
  assign sum_diff = dout[3:0];
  assign \sub_dut.fa_dut4.a  = \sub_dut.a [3];
  assign \sub_dut.fa_dut4.b  = \sub_dut.l [3];
  assign \sub_dut.fa_dut4.cin  = \sub_dut.s [2];
  assign \sub_dut.borrow  = \sub_dut.fa_dut4.co ;
  assign \sub_dut.diff [3] = \sub_dut.fa_dut4.sum ;
  assign \sub_dut.fa_dut3.a  = \sub_dut.a [2];
  assign \sub_dut.fa_dut3.b  = \sub_dut.l [2];
  assign \sub_dut.fa_dut3.cin  = \sub_dut.s [1];
  assign \sub_dut.s [2] = \sub_dut.fa_dut3.co ;
  assign \sub_dut.diff [2] = \sub_dut.fa_dut3.sum ;
  assign \sub_dut.fa_dut2.a  = \sub_dut.a [1];
  assign \sub_dut.fa_dut2.b  = \sub_dut.l [1];
  assign \sub_dut.fa_dut2.cin  = \sub_dut.s [0];
  assign \sub_dut.s [1] = \sub_dut.fa_dut2.co ;
  assign \sub_dut.diff [1] = \sub_dut.fa_dut2.sum ;
  assign \sub_dut.fa_dut1.a  = \sub_dut.a [0];
  assign \sub_dut.fa_dut1.b  = \sub_dut.l [0];
  assign \sub_dut.fa_dut1.cin  = 1'h1;
  assign \sub_dut.s [0] = \sub_dut.fa_dut1.co ;
  assign \sub_dut.diff [0] = \sub_dut.fa_dut1.sum ;
  assign \sub_dut.a  = a;
  assign \sub_dut.b  = b;
  assign borrow = \sub_dut.borrow ;
  assign diff1 = \sub_dut.diff ;
  assign \mux_dut.add  = { carry_out, sum1 };
  assign dout = \mux_dut.dout ;
  assign \mux_dut.sel_add1_sub0  = sel_add1_sub0;
  assign \mux_dut.sub  = { borrow, diff1 };
  assign \adder_dut.fa_dut4.a  = \adder_dut.a [3];
  assign \adder_dut.fa_dut4.b  = \adder_dut.b [3];
  assign \adder_dut.fa_dut4.cin  = \adder_dut.c [2];
  assign \adder_dut.carry_out  = \adder_dut.fa_dut4.co ;
  assign \adder_dut.sum [3] = \adder_dut.fa_dut4.sum ;
  assign \adder_dut.fa_dut3.a  = \adder_dut.a [2];
  assign \adder_dut.fa_dut3.b  = \adder_dut.b [2];
  assign \adder_dut.fa_dut3.cin  = \adder_dut.c [1];
  assign \adder_dut.c [2] = \adder_dut.fa_dut3.co ;
  assign \adder_dut.sum [2] = \adder_dut.fa_dut3.sum ;
  assign \adder_dut.fa_dut2.a  = \adder_dut.a [1];
  assign \adder_dut.fa_dut2.b  = \adder_dut.b [1];
  assign \adder_dut.fa_dut2.cin  = \adder_dut.c [0];
  assign \adder_dut.c [1] = \adder_dut.fa_dut2.co ;
  assign \adder_dut.sum [1] = \adder_dut.fa_dut2.sum ;
  assign \adder_dut.fa_dut1.a  = \adder_dut.a [0];
  assign \adder_dut.fa_dut1.b  = \adder_dut.b [0];
  assign \adder_dut.fa_dut1.cin  = 1'h0;
  assign \adder_dut.c [0] = \adder_dut.fa_dut1.co ;
  assign \adder_dut.sum [0] = \adder_dut.fa_dut1.sum ;
  assign \adder_dut.a  = a;
  assign \adder_dut.b  = b;
  assign carry_out = \adder_dut.carry_out ;
  assign sum1 = \adder_dut.sum ;
endmodule
