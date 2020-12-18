`timescale 1ns / 1ps
module Test15(input CLK, input [4:0] En, input D_IN, output reg [4:0] OUT);

    always@(posedge CLK) begin
        if(En[0])
            OUT[0] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En[1])
            OUT[1] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En[2])
            OUT[2] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En[3])
            OUT[3] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En[4])
            OUT[4] <= D_IN;
    end
endmodule