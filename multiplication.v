module multiplication(input [3:0] M, input [3:0] Q, input clk, input start, output reg [7:0] product);
reg [4:0] SUM;
reg [3:0] M_reg;// TO DECLARE INPUTS AS REGISTERS //
reg [2:0] count;
reg [3:0] N;
reg [3:0] Q_reg;// TO DECLARE INPUTS AS REGISTERS //
reg [3:0] A;
reg C;
initial begin // INITIALISING ALL REGISTERS TO 0 //
A = 4'b0000;
N = 4'b0000;
SUM = 5'b00000;
C = 1'b0;
Q_reg = 4'b0000;
M_reg = 4'b0000;
count = 3'b000;
product = 8'b00000000;
end
always @(posedge clk) begin
if (start) begin 
M_reg <= M; 
Q_reg <= Q;
A <= 4'b0000; // INITIAL ASSIGNMENT OF A AS 0 //
C <= 1'b0; // INITIAL ASSIGNMENT OF C AS 0 //
count <= 3'b000;
end
else if (count < 4) begin
    if (Q_reg[0] == 1'b1) begin
        N = M_reg;
        SUM = A+N;
    end
    else begin
        N = 4'b0000;
        SUM = A+ N;
    end
{C, A, Q_reg} = {SUM, Q_reg} >> 1;
count <= count + 1'b1;
if (count == 3) begin
product <= {A, Q_reg};
end
end
end
endmodule