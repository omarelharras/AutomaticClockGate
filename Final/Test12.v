`timescale 1ns / 1ps

module Test12(input CLK, input En1, input En2, input D_IN1, input D_IN2, output reg OUT1, output reg OUT2, output reg OUT3);
    always@(posedge CLK) begin
        if(En1)
            OUT1 <= D_IN1;
    end
    always@(posedge CLK) begin
        if(En1)
            OUT2 <= D_IN2;
    end
    always@(posedge CLK) begin
        if(En2)
            OUT3 <= D_IN2;
    end
endmodule
