`timescale 1ns / 1ps
module Test3(input CLK, input EN1, input En2, input D_IN, input D1, output reg D_OUT, output reg DD);

    always@(posedge CLK) begin
        if(EN1)
            D_OUT <= D_IN;
    end
    always@(posedge CLK) begin
        if(En2)
            DD <= D1;
    end
endmodule
