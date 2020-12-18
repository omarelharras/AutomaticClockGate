`timescale 1ns / 1ps
module Test4(input CLK, input EN, input D_IN1, input D_IN2, output reg OUT);

    reg D_OUT;
    always@(posedge CLK) begin
        if(EN)
            D_OUT <= D_IN1;
    end
    assign OUT = D_IN2 + D_OUT;
endmodule