`timescale 1ns / 1ps
module Test5(input CLK, input En1, input En2, input En3, input En4, input En5,input D_IN, output reg [4:0] OUT);

    always@(posedge CLK) begin
        if(En1)
            OUT[0] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En2)
            OUT[1] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En3)
            OUT[2] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En4)
            OUT[3] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En5)
            OUT[4] <= D_IN;
    end
endmodule