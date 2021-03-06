/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module Test6(CLK, EN, D_IN1, D_IN2, OUT);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  input CLK;
  input D_IN1;
  input D_IN2;
  wire D_OUT;
  input EN;
  output OUT;
  sky130_fd_sc_hd__inv_1 _4_ (
    .A(D_IN2),
    .Y(_2_)
  );
  sky130_fd_sc_hd__inv_1 _5_ (
    .A(D_OUT),
    .Y(_3_)
  );
  sky130_fd_sc_hd__nor2_1 _6_ (
    .A(_2_),
    .B(_3_),
    .Y(OUT)
  );
  sky130_fd_sc_hd__nand2_1 _7_ (
    .A(D_IN1),
    .B(EN),
    .Y(_1_)
  );
  sky130_fd_sc_hd__o21ai_0 _8_ (
    .A1(EN),
    .A2(_3_),
    .B1(_1_),
    .Y(_0_)
  );
  sky130_fd_sc_hd__dfxtp_1 _9_ (
    .CLK(CLK),
    .D(_0_),
    .Q(D_OUT)
  );
endmodule
