/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module Test7(CLK, En1, En2, En3, En4, En5, D_IN, OUT);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  input CLK;
  input [4:0] D_IN;
  input En1;
  input En2;
  input En3;
  input En4;
  input En5;
  output [4:0] OUT;
  sky130_fd_sc_hd__mux2_2 _05_ (
    .A0(OUT[3]),
    .A1(D_IN[3]),
    .S(En4),
    .X(_03_)
  );
  sky130_fd_sc_hd__mux2_2 _06_ (
    .A0(OUT[2]),
    .A1(D_IN[2]),
    .S(En3),
    .X(_02_)
  );
  sky130_fd_sc_hd__mux2_2 _07_ (
    .A0(OUT[0]),
    .A1(D_IN[0]),
    .S(En1),
    .X(_00_)
  );
  sky130_fd_sc_hd__mux2_2 _08_ (
    .A0(OUT[4]),
    .A1(D_IN[4]),
    .S(En5),
    .X(_04_)
  );
  sky130_fd_sc_hd__mux2_2 _09_ (
    .A0(OUT[1]),
    .A1(D_IN[1]),
    .S(En2),
    .X(_01_)
  );
  sky130_fd_sc_hd__dfxtp_1 _10_ (
    .CLK(CLK),
    .D(_01_),
    .Q(OUT[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _11_ (
    .CLK(CLK),
    .D(_00_),
    .Q(OUT[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _12_ (
    .CLK(CLK),
    .D(_02_),
    .Q(OUT[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _13_ (
    .CLK(CLK),
    .D(_04_),
    .Q(OUT[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _14_ (
    .CLK(CLK),
    .D(_03_),
    .Q(OUT[3])
  );
endmodule
