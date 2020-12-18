`timescale 1ns / 1ps
module Test10(input CLK, input En,input D_IN, output reg [4:0] OUT);

    always@(posedge CLK) begin
        if(En)
            OUT[0] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En)
            OUT[1] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En)
            OUT[2] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En)
            OUT[3] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En)
            OUT[4] <= D_IN;
    end
endmodule