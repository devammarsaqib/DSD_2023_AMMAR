module Lab5_tb;
  logic [3:0] A;
  logic [2:0] B;
  logic [6:0] LED;
  logic [7:0] SSD;
  logic DP;
  logic SW;

 localparam period = 10;

 Lab5 UUT(.a(A), .b(B), .led(LED), .ssd(SSD), .dp(DP), .sw(SW));

 initial begin
    A = 4'b0000; B = 3'b000; SW = 1'b0;
    #period;
    A = 4'b0001; B = 3'b001; SW = 1'b1;
    #period;
    A = 4'b0010; B = 3'b010;
    #period;
    A = 4'b0011; B = 3'b011;
    #period;
    A = 4'b0100; B = 3'b100;
    #period;
    A = 4'b0101; B = 3'b101;
    #period;
    A = 4'b0110; B = 3'b110;
    #period;
    A = 4'b0111; B = 3'b111;
    #period;
    A = 4'b1000;
    #period;
    A = 4'b1001;
    #period;
    A = 4'b1010;
    #period;
    A = 4'b1011;
    #period;
    A = 4'b1100;
    #period;
    A = 4'b1101;
    #period;
    A = 4'b1110;
    #period;
    A = 4'b1111;
    #period;
    $stop;
 end

endmodule
