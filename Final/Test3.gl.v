/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module Test3(CLK, EN1, En2, D_IN, D1, D_OUT, DD);
  wire _0_;
  wire _1_;
  input CLK;
  input D1;
  output DD;
  input D_IN;
  output D_OUT;
  input EN1;
  input En2;
  sky130_fd_sc_hd__mux2_2 _2_ (
    .A0(D_OUT),
    .A1(D_IN),
    .S(EN1),
    .X(_1_)
  );
  sky130_fd_sc_hd__mux2_2 _3_ (
    .A0(DD),
    .A1(D1),
    .S(En2),
    .X(_0_)
  );
  sky130_fd_sc_hd__dfxtp_1 _4_ (
    .CLK(CLK),
    .D(_0_),
    .Q(DD)
  );
  sky130_fd_sc_hd__dfxtp_1 _5_ (
    .CLK(CLK),
    .D(_1_),
    .Q(D_OUT)
  );
endmodule
