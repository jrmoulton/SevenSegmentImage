module SevenSegmentTop(
    output [6:0] seg ,
    output [3:0] an ,
    input [7:0] sw
    );
    
    wire [6:0] D;
    assign seg = ~D;
    assign an = ~sw [7:4];
    SevenSegmentTruthTable S1(
    //SevenSegmentCombinational S1(
    .x3(sw[3]),
    .x2(sw[2]),
    .x1(sw[1]),
    .x0(sw[0]),
    .a(D[0]),
    .b(D[1]),
    .c(D[2]),
    .d(D[3]),
    .e(D[4]),
    .f(D[5]),
    .g(D[6])
    );
endmodule