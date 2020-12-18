

module Test11
(
  CLK,
  En1,
  En2,
  D_IN,
  OUT1,
  OUT2
);

  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  input CLK;
  input [4:0] D_IN;
  input En1;
  input En2;
  output [4:0] OUT1;
  output [4:0] OUT2;

  sky130_fd_sc_hd__dfxtp_1
  _20_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[1]),
    .Q(OUT1[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _21_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[0]),
    .Q(OUT1[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _22_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[1]),
    .Q(OUT2[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _23_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[2]),
    .Q(OUT2[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _24_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[2]),
    .Q(OUT1[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _25_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[3]),
    .Q(OUT2[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _26_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[4]),
    .Q(OUT2[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _27_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[4]),
    .Q(OUT1[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _28_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[3]),
    .Q(OUT1[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _29_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[0]),
    .Q(OUT2[4])
  );

  wire ClockGateOut0;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__0
  (
    .EN(En1),
    .INV_CLK(CLK),
    .Y(ClockGateOut0)
  );

  wire ClockGateOut1;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__1
  (
    .EN(En2),
    .INV_CLK(CLK),
    .Y(ClockGateOut1)
  );


endmodule

