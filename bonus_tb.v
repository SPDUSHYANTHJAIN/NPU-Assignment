module bonus_tb;

reg [127:0] A;
reg [127:0] B;
reg mode;
reg [1:0] mode2;
reg clk;

wire [127:0] result;

bonus uut (
    .A(A),
    .B(B),
    .mode(mode),
    .mode2(mode2),
    .clk(clk),
    .result(result)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    // Test Case 1: 8-bit addition
    A = 128'h00000000000000000000000000000005;
    B = 128'h00000000000000000000000000000003;
    mode = 0;
    mode2 = 2'b00;

    #5120;

    // Test Case 2: 16-bit subtraction
    A = 128'h0000000000000000000000000000000A;
    B = 128'h00000000000000000000000000000004;
    mode = 1;
    mode2 = 2'b01;

    #5120;

    // Test Case 3: 32-bit addition
    A = 128'h0000000000000000000000000000000F;
    B = 128'h00000000000000000000000000000001;
    mode = 0;
    mode2 = 2'b10;

    #5120;

    $finish;
end

initial begin
    $monitor("Time=%0t | mode=%b | mode2=%b | A=%h | B=%h | result=%h",
             $time, mode, mode2, A, B, result);
end

endmodule