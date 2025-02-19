module Lab4(
    input a1, a0, b1, b0,
    output R, G, B
    );

    assign R = (~b1 & ~b0) | (a0 & ~b1) | (a1 & ~b1) | (a1 & ~b0) | (a1 & a0);
    assign G = (~a1 & ~a0) | (~a1 & b0) | (~a1 & b1) | (~a0 & b1) | (b1 & b0);
    assign B = (~a0 & b0) | (~a1 & b1) | (a0 & ~b0) | (a1 & ~b1);
endmodule
