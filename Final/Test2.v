`timescale 1ns / 1ps
module Test1(input CLK, input EN, input D_IN, input D1, output reg D_OUT, output reg DD);

    always@(posedge CLK) begin
        if(EN)
            D_OUT <= D_IN;
    end
    always@(posedge CLK) begin
        if(EN)
            DD <= D1;
    end
endmodule
