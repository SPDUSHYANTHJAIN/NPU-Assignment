module tb_multiplication;
reg [3:0] M, Q;
reg clk, start;
wire [7:0] product;
multiplication uut (.M(M),.Q(Q),.clk(clk),.start(start),.product(product));
initial begin
clk = 0;
forever #10 clk = ~clk;
end
initial begin
start = 0;
M = 0;
Q = 0;
// Test case 1: 3 * 2 = 6 //
#10 start = 1; M = 3; Q = 2;
#20 start = 0;
#80;
// Test case 2: 4 * 3 = 12
#10 start = 1; M = 4; Q = 3;
#20 start = 0;
#80;
// Test case 3: 5 * 6 = 30
#10 start = 1; M = 5; Q = 6;
#20 start = 0;
#80;
// Test case 4: 7 * 8 = 56
#10 start = 1; M = 7; Q = 8;
#20 start = 0;
#80;
$finish;
end
endmodule