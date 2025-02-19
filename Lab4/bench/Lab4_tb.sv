module Lab4_tb;
  logic a;
  logic b;
  logic c;
  logic d;
  logic R;
  logic G;
  logic B;

 localparam period = 10;

 Lab4 UUT(.a1(a), .a0(b), .b1(c), .b0(d), .R(R), .G(G), .B(B));

 // Provide different combinations of the inputs to check validity of code
    initial begin
        a = 0; b = 0; c = 0; d = 0;
        #period;
        a = 0; b = 0; c = 0; d = 1;
        #period;
        a = 0; b = 0; c = 1; d = 0;
        #period;
        a = 0; b = 0; c = 1; d = 1;
        #period;
        a = 0; b = 1; c = 0; d = 0;
        #period;
        a = 0; b = 1; c = 0; d = 1;
        #period;
        a = 0; b = 1; c = 1; d = 0;
        #period;
        a = 0; b = 1; c = 1; d = 1;
        #period;
        a = 1; b = 0; c = 0; d = 0;
        #period;
        a = 1; b = 0; c = 0; d = 1;
        #period;
        a = 1; b = 0; c = 1; d = 0;
        #period;
        a = 1; b = 0; c = 1; d = 1;
        #period;
        a = 1; b = 1; c = 0; d = 0;
        #period;
        a = 1; b = 1; c = 0; d = 1;
        #period;
        a = 1; b = 1; c = 1; d = 0;
        #period;
        a = 1; b = 1; c = 1; d = 1;
        #period;
        $stop;
    end
endmodule
