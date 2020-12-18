`timescale 1ns / 1ps
module Test8(input CLK, input En1, input En2, input En3, input En4, input En5,input D_IN, output reg [4:0] OUT1, output reg [4:0] OUT2);

    always@(posedge CLK) begin
        if(En1)
            OUT1[0] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En2)
            OUT1[1] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En3)
            OUT1[2] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En4)
            OUT1[3] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En5)
            OUT1[4] <= D_IN;
    end

    always@(posedge CLK) begin
        if(En5)
            OUT2[0] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En4)
            OUT2[1] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En3)
            OUT2[2] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En2)
            OUT2[3] <= D_IN;
    end
    always@(posedge CLK) begin
        if(En1)
            OUT2[4] <= D_IN;
    end
endmodule