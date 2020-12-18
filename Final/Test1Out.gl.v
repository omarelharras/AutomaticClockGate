

module Test1
(
  CLK,
  EN,
  D_IN,
  D_OUT
);

  wire _0_;
  input CLK;
  input D_IN;
  output D_OUT;
  input EN;

  sky130_fd_sc_hd__dfxtp_1
  _2_
  (
    .CLK(ClockGateOut0),
    .D(D_IN),
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

