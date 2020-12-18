`timescale 1ns / 1ps

module Test14(input CLK, input [1:0] En1, input D_IN1, input D_IN2, output reg OUT1, output reg OUT2, output reg OUT3);
    always@(posedge CLK) begin
        if(En1[0])
            OUT1 <= D_IN1;
    end
    always@(posedge CLK) begin
        if(En1[0])
            OUT2 <= D_IN2;
    end
    always@(posedge CLK) begin
        if(En1[1])
            OUT3 <= D_IN2;
    end
endmodule