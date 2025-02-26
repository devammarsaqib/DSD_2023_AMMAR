module Lab5(
    input [3:0] a,
    input [2:0] b,
    input sw,
    output [6:0] led,
    output [7:0] ssd,
    output dp
    );

    // Segment pins a to g
    assign led[0] = (a[2] | a[0]) & (a[3] | ~a[1]) & (a[3] | ~a[2] | ~a[0]) & (~a[3] | a[2] | a[1]) & (~a[3] | a[0]) & (~a[2] | ~a[1]);
    assign led[1] = (a[3] | a[1] | a[0]) & (a[3] | ~a[1] | ~a[0]) & (a[2] | a[0]) & (~a[3] | a[1] | ~a[0]) & (a[3] | a[2]);
    assign led[2] = (a[3] | ~a[2]) & (~a[3] | a[2]) & (a[1] | ~a[0]) & (a[3] | a[1]) & (a[3] | ~a[0]);
    assign led[3] = (~a[2] | a[1] | ~a[0]) & (a[3] | a[2] | a[0]) & (a[2] | ~a[1] | ~a[0]) & (~a[2] | ~a[1] | a[0]) & (~a[3] | a[1]);
    assign led[4] = (a[2] | a[0]) & (~a[1] | a[0]) & (~a[3] | ~a[1]) & (~a[3] | ~a[2]);
    assign led[5] = (a[1] | a[0]) & (a[3] | ~a[2] | a[1]) & (~a[2] | a[0]) & (~a[3] | a[2]) & (~a[3] | ~a[1]);
    assign led[6] = (a[2] | ~a[1]) & (~a[3] | a[2]) & (a[3] | ~a[2] | a[1]) & (~a[1] | a[0]) & (~a[3] | ~a[0]);


    // 8 Seven-Segments
    assign ssd[0] = (b[2] | b[1] | b[0]);
    assign ssd[1] = (b[2] | b[1] | ~b[0]);
    assign ssd[2] = (b[2] | ~b[1] | b[0]);
    assign ssd[3] = (b[2] | ~b[1] | ~b[0]);
    assign ssd[4] = (~b[2] | b[1] | b[0]);
    assign ssd[5] = (~b[2] | b[1] | ~b[0]);
    assign ssd[6] = (~b[2] | ~b[1] | b[0]);
    assign ssd[7] = (~b[2] | ~b[1] | ~b[0]);

    assign dp = (~sw);

endmodule
