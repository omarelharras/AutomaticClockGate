

module Test1
(
  CLK,
  EN,
  D_IN,
  D1,
  D_OUT,
  DD
);

  wire _0_;
  wire _1_;
  input CLK;
  input D1;
  output DD;
  input D_IN;
  output D_OUT;
  input EN;

  sky130_fd_sc_hd__dfxtp_1
  _4_
  (
    .CLK(ClockGateOut0),
    .D(D_IN),
    .Q(D_OUT)
  );


  sky130_fd_sc_hd__dfxtp_1
  _5_
  (
    .CLK(ClockGateOut0),
    .D(D1),
    .Q(DD)
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

