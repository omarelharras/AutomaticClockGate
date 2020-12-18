`timescale 1ns / 1ps
module Test1(input CLK, input EN, input D_IN, output reg D_OUT;

    always@(posedge CLK) begin
        if(EN)
            D_OUT <= D_IN;
    end
endmodule
