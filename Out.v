

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
    .CLK(__clock_gate_output_c_),
    .D(D_IN),
    .Q(D_OUT)
  );


  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__
  (
    .EN(EN),
    .INV_CLK(CLK),
    .Y(__clock_gate_output_c_)
  );


endmodule

