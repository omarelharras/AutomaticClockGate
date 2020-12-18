

module Test5
(
  CLK,
  En1,
  En2,
  En3,
  En4,
  En5,
  D_IN,
  OUT
);

  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  input CLK;
  input D_IN;
  input En1;
  input En2;
  input En3;
  input En4;
  input En5;
  output [4:0] OUT;

  sky130_fd_sc_hd__dfxtp_1
  _10_
  (
    .CLK(ClockGateOut0),
    .D(D_IN),
    .Q(OUT[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _11_
  (
    .CLK(ClockGateOut1),
    .D(D_IN),
    .Q(OUT[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _12_
  (
    .CLK(ClockGateOut2),
    .D(D_IN),
    .Q(OUT[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _13_
  (
    .CLK(ClockGateOut3),
    .D(D_IN),
    .Q(OUT[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _14_
  (
    .CLK(ClockGateOut4),
    .D(D_IN),
    .Q(OUT[4])
  );

  wire ClockGateOut0;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__0
  (
    .EN(En2),
    .INV_CLK(CLK),
    .Y(ClockGateOut0)
  );

  wire ClockGateOut1;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__1
  (
    .EN(En1),
    .INV_CLK(CLK),
    .Y(ClockGateOut1)
  );

  wire ClockGateOut2;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__2
  (
    .EN(En3),
    .INV_CLK(CLK),
    .Y(ClockGateOut2)
  );

  wire ClockGateOut3;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__3
  (
    .EN(En4),
    .INV_CLK(CLK),
    .Y(ClockGateOut3)
  );

  wire ClockGateOut4;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__4
  (
    .EN(En5),
    .INV_CLK(CLK),
    .Y(ClockGateOut4)
  );


endmodule

