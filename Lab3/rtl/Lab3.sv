module Lab3(
    input logic a, b, c,
    output logic x, y
    );

   assign x = ~c ^ (a | b);
   assign y = ((a | b) & ((~(a & b)) ^ (a | b)));
endmodule
