`timescale 1ns / 1ps
module Test13(input CLK, input [1:0] EN, input D_IN, input D1, output reg D_OUT, output reg DD);

    always@(posedge CLK) begin
        if(EN[0])
            D_OUT <= D_IN;
    end
    always@(posedge CLK) begin
        if(EN[1])
            DD <= D1;
    end
endmodule