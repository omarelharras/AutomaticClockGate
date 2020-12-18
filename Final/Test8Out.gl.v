

module Test8
(
  CLK,
  En1,
  En2,
  En3,
  En4,
  En5,
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
  input D_IN;
  input En1;
  input En2;
  input En3;
  input En4;
  input En5;
  output [4:0] OUT1;
  output [4:0] OUT2;

  sky130_fd_sc_hd__inv_1
  _25_
  (
    .A(OUT1[1]),
    .Y(_10_)
  );


  sky130_fd_sc_hd__nand2_1
  _26_
  (
    .A(D_IN),
    .B(En2),
    .Y(_11_)
  );


  sky130_fd_sc_hd__o21ai_0
  _27_
  (
    .A1(En2),
    .A2(_10_),
    .B1(_11_),
    .Y(_01_)
  );


  sky130_fd_sc_hd__inv_1
  _28_
  (
    .A(OUT2[1]),
    .Y(_12_)
  );


  sky130_fd_sc_hd__nand2_1
  _29_
  (
    .A(D_IN),
    .B(En4),
    .Y(_13_)
  );


  sky130_fd_sc_hd__o21ai_0
  _30_
  (
    .A1(En4),
    .A2(_12_),
    .B1(_13_),
    .Y(_06_)
  );


  sky130_fd_sc_hd__inv_1
  _31_
  (
    .A(OUT1[4]),
    .Y(_14_)
  );


  sky130_fd_sc_hd__nand2_1
  _32_
  (
    .A(D_IN),
    .B(En5),
    .Y(_15_)
  );


  sky130_fd_sc_hd__o21ai_0
  _33_
  (
    .A1(En5),
    .A2(_14_),
    .B1(_15_),
    .Y(_04_)
  );


  sky130_fd_sc_hd__inv_1
  _34_
  (
    .A(OUT1[3]),
    .Y(_16_)
  );


  sky130_fd_sc_hd__o21ai_0
  _35_
  (
    .A1(En4),
    .A2(_16_),
    .B1(_13_),
    .Y(_03_)
  );


  sky130_fd_sc_hd__inv_1
  _36_
  (
    .A(OUT1[0]),
    .Y(_17_)
  );


  sky130_fd_sc_hd__nand2_1
  _37_
  (
    .A(D_IN),
    .B(En1),
    .Y(_18_)
  );


  sky130_fd_sc_hd__o21ai_0
  _38_
  (
    .A1(En1),
    .A2(_17_),
    .B1(_18_),
    .Y(_00_)
  );


  sky130_fd_sc_hd__inv_1
  _39_
  (
    .A(OUT2[2]),
    .Y(_19_)
  );


  sky130_fd_sc_hd__nand2_1
  _40_
  (
    .A(D_IN),
    .B(En3),
    .Y(_20_)
  );


  sky130_fd_sc_hd__o21ai_0
  _41_
  (
    .A1(En3),
    .A2(_19_),
    .B1(_20_),
    .Y(_07_)
  );


  sky130_fd_sc_hd__inv_1
  _42_
  (
    .A(OUT2[0]),
    .Y(_21_)
  );


  sky130_fd_sc_hd__o21ai_0
  _43_
  (
    .A1(En5),
    .A2(_21_),
    .B1(_15_),
    .Y(_05_)
  );


  sky130_fd_sc_hd__inv_1
  _44_
  (
    .A(OUT2[3]),
    .Y(_22_)
  );


  sky130_fd_sc_hd__o21ai_0
  _45_
  (
    .A1(En2),
    .A2(_22_),
    .B1(_11_),
    .Y(_08_)
  );


  sky130_fd_sc_hd__inv_1
  _46_
  (
    .A(OUT1[2]),
    .Y(_23_)
  );


  sky130_fd_sc_hd__o21ai_0
  _47_
  (
    .A1(En3),
    .A2(_23_),
    .B1(_20_),
    .Y(_02_)
  );


  sky130_fd_sc_hd__inv_1
  _48_
  (
    .A(OUT2[4]),
    .Y(_24_)
  );


  sky130_fd_sc_hd__o21ai_0
  _49_
  (
    .A1(En1),
    .A2(_24_),
    .B1(_18_),
    .Y(_09_)
  );


  sky130_fd_sc_hd__dfxtp_1
  _50_
  (
    .CLK(CLK),
    .D(_02_),
    .Q(OUT1[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _51_
  (
    .CLK(CLK),
    .D(_07_),
    .Q(OUT2[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _52_
  (
    .CLK(CLK),
    .D(_06_),
    .Q(OUT2[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _53_
  (
    .CLK(CLK),
    .D(_01_),
    .Q(OUT1[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _54_
  (
    .CLK(CLK),
    .D(_00_),
    .Q(OUT1[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _55_
  (
    .CLK(CLK),
    .D(_04_),
    .Q(OUT1[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _56_
  (
    .CLK(CLK),
    .D(_08_),
    .Q(OUT2[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _57_
  (
    .CLK(CLK),
    .D(_05_),
    .Q(OUT2[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _58_
  (
    .CLK(CLK),
    .D(_03_),
    .Q(OUT1[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _59_
  (
    .CLK(CLK),
    .D(_09_),
    .Q(OUT2[4])
  );


endmodule

