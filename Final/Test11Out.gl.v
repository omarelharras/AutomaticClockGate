

module Test12
(
  CLK,
  En1,
  En2,
  En3,
  En4,
  En5,
  D_IN,
  OUT1,
  OUT2,
  OUT3,
  OUT4,
  OUT5
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
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  input CLK;
  input [4:0] D_IN;
  input En1;
  input En2;
  input En3;
  input En4;
  input En5;
  output [4:0] OUT1;
  output [4:0] OUT2;
  output [4:0] OUT3;
  output [4:0] OUT4;
  output [4:0] OUT5;

  sky130_fd_sc_hd__dfxtp_1
  _50_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[0]),
    .Q(OUT3[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _51_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[0]),
    .Q(OUT4[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _52_
  (
    .CLK(ClockGateOut2),
    .D(D_IN[1]),
    .Q(OUT2[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _53_
  (
    .CLK(ClockGateOut3),
    .D(D_IN[2]),
    .Q(OUT1[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _54_
  (
    .CLK(ClockGateOut4),
    .D(D_IN[3]),
    .Q(OUT5[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _55_
  (
    .CLK(ClockGateOut2),
    .D(D_IN[3]),
    .Q(OUT2[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _56_
  (
    .CLK(ClockGateOut2),
    .D(D_IN[0]),
    .Q(OUT2[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _57_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[2]),
    .Q(OUT3[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _58_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[3]),
    .Q(OUT3[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _59_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[4]),
    .Q(OUT3[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _60_
  (
    .CLK(ClockGateOut3),
    .D(D_IN[1]),
    .Q(OUT1[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _61_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[2]),
    .Q(OUT4[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _62_
  (
    .CLK(ClockGateOut2),
    .D(D_IN[2]),
    .Q(OUT2[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _63_
  (
    .CLK(ClockGateOut4),
    .D(D_IN[0]),
    .Q(OUT5[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _64_
  (
    .CLK(ClockGateOut3),
    .D(D_IN[3]),
    .Q(OUT1[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _65_
  (
    .CLK(ClockGateOut3),
    .D(D_IN[0]),
    .Q(OUT1[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _66_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[1]),
    .Q(OUT4[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _67_
  (
    .CLK(ClockGateOut3),
    .D(D_IN[4]),
    .Q(OUT1[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _68_
  (
    .CLK(ClockGateOut4),
    .D(D_IN[2]),
    .Q(OUT5[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _69_
  (
    .CLK(ClockGateOut2),
    .D(D_IN[4]),
    .Q(OUT2[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _70_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[4]),
    .Q(OUT4[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _71_
  (
    .CLK(ClockGateOut1),
    .D(D_IN[3]),
    .Q(OUT4[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _72_
  (
    .CLK(ClockGateOut0),
    .D(D_IN[1]),
    .Q(OUT3[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _73_
  (
    .CLK(ClockGateOut4),
    .D(D_IN[1]),
    .Q(OUT5[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _74_
  (
    .CLK(ClockGateOut4),
    .D(D_IN[4]),
    .Q(OUT5[0])
  );

  wire ClockGateOut0;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__0
  (
    .EN(En3),
    .INV_CLK(CLK),
    .Y(ClockGateOut0)
  );

  wire ClockGateOut1;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__1
  (
    .EN(En4),
    .INV_CLK(CLK),
    .Y(ClockGateOut1)
  );

  wire ClockGateOut2;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__2
  (
    .EN(En2),
    .INV_CLK(CLK),
    .Y(ClockGateOut2)
  );

  wire ClockGateOut3;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__3
  (
    .EN(En1),
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

