module SevenSegHex(input x0, x1, x2, x3, output a, b, c, d, e, f, g);

    wire [3:0] N = {x3,x2,x1,x0}; // Pack inputs into a single signal
    reg [6:0] D;
    assign a = D[6];
    assign b = D[5];
    assign c = D[4];
    assign d = D[3];
    assign e = D[2];
    assign f = D[1];
    assign g = D[0];
    
    always @(*) begin
        case (N)
            4'b0000 : D = 7'b1111110;
            4'b0001 : D = 7'b0110000;
            4'b0010 : D = 7'b1101101;
            4'b0011 : D = 7'b1111001;
            4'b0100 : D = 7'b0110011;
            4'b0101 : D = 7'b1011011;
            4'b0110 : D = 7'b1011111;
            4'b0111 : D = 7'b1110000;
            4'b1000 : D = 7'b1111111;
            4'b1001 : D = 7'b1111011;
            // start the hex values
            4'b1010 : D = 7'b1110111;
            4'b1011 : D = 7'b0011111;
            4'b1100 : D = 7'b1001110;
            4'b1101 : D = 7'b0111101;
            4'b1110 : D = 7'b1001111;
            4'b1111 : D = 7'b1000111;
            
            // Always provide a " default " case to catch
            // unexpected or invalid inputs:
            default : D = 7'b0000000;
        endcase
    end
endmodule