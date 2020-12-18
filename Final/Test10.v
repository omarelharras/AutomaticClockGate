module Test11(input CLK, input En1, input En2,input [4:0] D_IN, output reg [4:0] OUT1, output reg [4:0] OUT2);

    always@(posedge CLK) begin
        if(En1)
            OUT1[0] <= D_IN[0];
    end
    always@(posedge CLK) begin
        if(En1)
            OUT1[1] <= D_IN[1];
    end
    always@(posedge CLK) begin
        if(En1)
            OUT1[2] <= D_IN[2];
    end
    always@(posedge CLK) begin
        if(En1)
            OUT1[3] <= D_IN[3];
    end
    always@(posedge CLK) begin
        if(En1)
            OUT1[4] <= D_IN[4];
    end

    always@(posedge CLK) begin
        if(En2)
            OUT2[0] <= D_IN[4];
    end
    always@(posedge CLK) begin
        if(En2)
            OUT2[1] <= D_IN[3];
    end
    always@(posedge CLK) begin
        if(En2)
            OUT2[2] <= D_IN[2];
    end
    always@(posedge CLK) begin
        if(En2)
            OUT2[3] <= D_IN[1];
    end
    always@(posedge CLK) begin
        if(En2)
            OUT2[4] <= D_IN[0];
    end
endmodule