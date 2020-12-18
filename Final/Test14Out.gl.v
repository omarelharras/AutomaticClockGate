

module Test14
(
  CLK,
  En1,
  D_IN1,
  D_IN2,
  OUT1,
  OUT2,
  OUT3
);

  wire _0_;
  wire _1_;
  wire _2_;
  input CLK;
  input D_IN1;
  input D_IN2;
  input [1:0] En1;
  output OUT1;
  output OUT2;
  output OUT3;

  sky130_fd_sc_hd__dfxtp_1
  _6_
  (
    .CLK(ClockGateOut0),
    .D(D_IN2),
    .Q(OUT2)
  );


  sky130_fd_sc_hd__dfxtp_1
  _7_
  (
    .CLK(ClockGateOut1),
    .D(D_IN2),
    .Q(OUT3)
  );


  sky130_fd_sc_hd__dfxtp_1
  _8_
  (
    .CLK(ClockGateOut0),
    .D(D_IN1),
    .Q(OUT1)
  );

  wire ClockGateOut0;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__0
  (
    .EN(En1[0]),
    .INV_CLK(CLK),
    .Y(ClockGateOut0)
  );

  wire ClockGateOut1;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__1
  (
    .EN(En1[1]),
    .INV_CLK(CLK),
    .Y(ClockGateOut1)
  );


endmodule

