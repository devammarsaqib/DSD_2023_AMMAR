module Full_Adder(
    input logic a, b, c,
    output logic sum, carry
    );

    assign sum = ((a ^ b) ^ c);
    assign carry = ((a & b) | (c & (a ^ b)));
endmodule
