

module Test4
(
  CLK,
  EN,
  D_IN1,
  D_IN2,
  OUT
);

  wire _0_;
  input CLK;
  input D_IN1;
  input D_IN2;
  wire D_OUT;
  input EN;
  output OUT;

  sky130_fd_sc_hd__xor2_1
  _1_
  (
    .A(D_IN2),
    .B(D_OUT),
    .X(OUT)
  );


  sky130_fd_sc_hd__dfxtp_1
  _3_
  (
    .CLK(ClockGateOut0),
    .D(D_IN1),
    .Q(D_OUT)
  );

  wire ClockGateOut0;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__0
  (
    .EN(EN),
    .INV_CLK(CLK),
    .Y(ClockGateOut0)
  );


endmodule

