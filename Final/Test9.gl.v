/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module Test10(CLK, En, D_IN, OUT);
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
  input CLK;
  input D_IN;
  input En;
  output [4:0] OUT;
  sky130_fd_sc_hd__inv_1 _11_ (
    .A(OUT[4]),
    .Y(_05_)
  );
  sky130_fd_sc_hd__nand2_1 _12_ (
    .A(D_IN),
    .B(En),
    .Y(_06_)
  );
  sky130_fd_sc_hd__o21ai_0 _13_ (
    .A1(En),
    .A2(_05_),
    .B1(_06_),
    .Y(_04_)
  );
  sky130_fd_sc_hd__inv_1 _14_ (
    .A(OUT[2]),
    .Y(_07_)
  );
  sky130_fd_sc_hd__o21ai_0 _15_ (
    .A1(En),
    .A2(_07_),
    .B1(_06_),
    .Y(_02_)
  );
  sky130_fd_sc_hd__inv_1 _16_ (
    .A(OUT[3]),
    .Y(_08_)
  );
  sky130_fd_sc_hd__o21ai_0 _17_ (
    .A1(En),
    .A2(_08_),
    .B1(_06_),
    .Y(_03_)
  );
  sky130_fd_sc_hd__inv_1 _18_ (
    .A(OUT[0]),
    .Y(_09_)
  );
  sky130_fd_sc_hd__o21ai_0 _19_ (
    .A1(En),
    .A2(_09_),
    .B1(_06_),
    .Y(_00_)
  );
  sky130_fd_sc_hd__inv_1 _20_ (
    .A(OUT[1]),
    .Y(_10_)
  );
  sky130_fd_sc_hd__o21ai_0 _21_ (
    .A1(En),
    .A2(_10_),
    .B1(_06_),
    .Y(_01_)
  );
  sky130_fd_sc_hd__dfxtp_1 _22_ (
    .CLK(CLK),
    .D(_04_),
    .Q(OUT[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _23_ (
    .CLK(CLK),
    .D(_03_),
    .Q(OUT[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _24_ (
    .CLK(CLK),
    .D(_02_),
    .Q(OUT[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _25_ (
    .CLK(CLK),
    .D(_01_),
    .Q(OUT[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _26_ (
    .CLK(CLK),
    .D(_00_),
    .Q(OUT[0])
  );
endmodule