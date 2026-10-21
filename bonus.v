module bonus(input [127:0]A, input [127:0] B,input mode,input [1:0] mode2, input clk, output reg [127:0] result);
reg [127:0]A_in;
reg [127:0]B_in;
reg mode_in;
reg [1:0] mode2_in;
reg k;
initial begin

k=0;
end
always @(posedge clk) begin
A_in <= A;
B_in <= B;
mode_in <= mode;
mode2_in <= mode2;
result <= 8'd0;
case(mode_in) 
1'b0: begin
case(mode2_in) 
2'b00: begin
{k,result[7:0]} <= A_in[7:0] + B_in[7:0];
if(k==1) begin
    result[7:0] <= 8'b11111111;
end
else begin
    result[7:0] <= result[7:0];
end
k <= 1'b0;

{k,result[15:8]} <= A_in[15:8] + B_in[15:8];
if(k==1) begin
    result[15:8] <= 8'b11111111;
end
else begin
    result[15:8] <= result[15:8];
end
k <= 1'b0;

{k,result[23:16]} <= A_in[23:16] + B_in[23:16];
if(k==1) begin
    result[23:16] <= 8'b11111111;
end
else begin
    result[23:16] <= result[23:16];
end
k <= 1'b0;

{k,result[31:24]} <= A_in[31:24] + B_in[31:24];
if(k==1) begin
    result[31:24] <= 8'b11111111;
end
else begin
    result[31:24] <= result[31:24];
end
k <= 1'b0;

{k,result[39:32]} <= A_in[39:32] + B_in[39:32];
if(k==1) begin
    result[39:32] <= 8'b11111111;
end
else begin
    result[39:32] <= result[39:32];
end
k <= 1'b0;

{k,result[47:40]} <= A_in[47:40] + B_in[47:40];
if(k==1) begin
    result[47:40] <= 8'b11111111;
end
else begin
    result[47:40] <= result[47:40];
end
k <= 1'b0;

{k,result[55:48]} <= A_in[55:48] + B_in[55:48];
if(k==1) begin
    result[55:48] <= 8'b11111111;
end
else begin
    result[55:48] <= result[55:48];
end
k <= 1'b0;

{k,result[63:56]} <= A_in[63:56] + B_in[63:56];
if(k==1) begin
    result[63:56] <= 8'b11111111;
end
else begin
    result[63:56] <= result[63:56];
end
k <= 1'b0;

{k,result[71:64]} <= A_in[71:64] + B_in[71:64];
if(k==1) begin
    result[71:64] <= 8'b11111111;
end
else begin
    result[71:64] <= result[71:64];
end
k <= 1'b0;

{k,result[79:72]} <= A_in[79:72] + B_in[79:72];
if(k==1) begin
    result[79:72] <= 8'b11111111;
end
else begin
    result[79:72] <= result[79:72];
end
k <= 1'b0;

{k,result[87:80]} <= A_in[87:80] + B_in[87:80];
if(k==1) begin
    result[87:80] <= 8'b11111111;
end
else begin
    result[87:80] <= result[87:80];
end
k <= 1'b0;

{k,result[95:88]} <= A_in[95:88] + B_in[95:88];
if(k==1) begin
    result[95:88] <= 8'b11111111;
end
else begin
    result[95:88] <= result[95:88];
end
k <= 1'b0;

{k,result[103:96]} <= A_in[103:96] + B_in[103:96];
if(k==1) begin
    result[103:96] <= 8'b11111111;
end
else begin
    result[103:96] <= result[103:96];
end
k <= 1'b0;

{k,result[111:104]} <= A_in[111:104] + B_in[111:104];
if(k==1) begin
    result[111:104] <= 8'b11111111;
end
else begin
    result[111:104] <= result[111:104];
end
k <= 1'b0;

{k,result[119:112]} <= A_in[119:112] + B_in[119:112];
if(k==1) begin
    result[119:112] <= 8'b11111111;
end
else begin
    result[119:112] <= result[119:112];
end
k <= 1'b0;

{k,result[127:120]} <= A_in[127:120] + B_in[127:120];
if(k==1) begin
    result[127:120] <= 8'b11111111;
end
else begin
    result[127:120] <= result[127:120];
end
k <= 1'b0;

end
2'b01: begin
{k,result[15:0]} <= A_in[15:0] + B_in[15:0];
if(k==1) begin
    result[15:0] <= 16'b1111111111111111;
end
else begin
    result[15:0] <= result[15:0];
end
k <= 1'b0;

{k,result[31:16]} <= A_in[31:16] + B_in[31:16];
if(k==1) begin
    result[31:16] <= 16'b1111111111111111;
end
else begin
    result[31:16] <= result[31:16];
end
k <= 1'b0;

{k,result[47:32]} <= A_in[47:32] + B_in[47:32];
if(k==1) begin
    result[47:32] <= 16'b1111111111111111;
end
else begin
    result[47:32] <= result[47:32];
end
k <= 1'b0;

{k,result[63:48]} <= A_in[63:48] + B_in[63:48];
if(k==1) begin
    result[63:48] <= 16'b1111111111111111;
end
else begin
    result[63:48] <= result[63:48];
end
k <= 1'b0;

{k,result[79:64]} <= A_in[79:64] + B_in[79:64];
if(k==1) begin
    result[79:64] <= 16'b1111111111111111;
end
else begin
    result[79:64] <= result[79:64];
end
k <= 1'b0;

{k,result[95:80]} <= A_in[95:80] + B_in[95:80];
if(k==1) begin
    result[95:80] <= 16'b1111111111111111;
end
else begin
    result[95:80] <= result[95:80];
end
k <= 1'b0;

{k,result[111:96]} <= A_in[111:96] + B_in[111:96];
if(k==1) begin
    result[111:96] <= 16'b1111111111111111;
end
else begin
    result[111:96] <= result[111:96];
end
k <= 1'b0;

{k,result[127:112]} <= A_in[127:112] + B_in[127:112];
if(k==1) begin
    result[127:112] <= 16'b1111111111111111;
end
else begin
    result[127:112] <= result[127:112];
end
k <= 1'b0;
end
2'b10: begin
{k,result[31:0]} <= A_in[31:0] + B_in[31:0];
if(k==1) begin
    result[31:0] <= 32'b11111111111111111111111111111111;
end
else begin
    result[31:0] <= result[31:0];
end
k <= 1'b0;

{k,result[63:32]} <= A_in[63:32] + B_in[63:32];
if(k==1) begin
    result[63:32] <= 32'b11111111111111111111111111111111;
end
else begin
    result[63:32] <= result[63:32];
end
k <= 1'b0;

{k,result[95:64]} <= A_in[95:64] + B_in[95:64];
if(k==1) begin
    result[95:64] <= 32'b11111111111111111111111111111111;
end
else begin
    result[95:64] <= result[95:64];
end
k <= 1'b0;

{k,result[127:96]} <= A_in[127:96] + B_in[127:96];
if(k==1) begin
    result[127:96] <= 32'b11111111111111111111111111111111;
end
else begin
    result[127:96] <= result[127:96];
end
k <= 1'b0;
end
endcase
end
1'b1: begin
case(mode2_in)
2'b00: begin
{k,result[7:0]} <= A_in[7:0] - B_in[7:0];
if(k==1) begin
    result[7:0] <= 8'b00000000;
end
else begin
    result[7:0] <= result[7:0];
end
k <= 1'b0;

{k,result[15:8]} <= A_in[15:8] - B_in[15:8];
if(k==1) begin
    result[15:8] <= 8'b00000000;
end
else begin
    result[15:8] <= result[15:8];
end
k <= 1'b0;

{k,result[23:16]} <= A_in[23:16] - B_in[23:16];
if(k==1) begin
    result[23:16] <= 8'b00000000;
end
else begin
    result[23:16] <= result[23:16];
end
k <= 1'b0;

{k,result[31:24]} <= A_in[31:24] - B_in[31:24];
if(k==1) begin
    result[31:24] <= 8'b00000000;
end
else begin
    result[31:24] <= result[31:24];
end
k <= 1'b0;

{k,result[39:32]} <= A_in[39:32] - B_in[39:32];
if(k==1) begin
    result[39:32] <= 8'b00000000;
end
else begin
    result[39:32] <= result[39:32];
end
k <= 1'b0;

{k,result[47:40]} <= A_in[47:40] - B_in[47:40];
if(k==1) begin
    result[47:40] <= 8'b00000000;
end
else begin
    result[47:40] <= result[47:40];
end
k <= 1'b0;

{k,result[55:48]} <= A_in[55:48] - B_in[55:48];
if(k==1) begin
    result[55:48] <= 8'b00000000;
end
else begin
    result[55:48] <= result[55:48];
end
k <= 1'b0;

{k,result[63:56]} <= A_in[63:56] - B_in[63:56];
if(k==1) begin
    result[63:56] <= 8'b00000000;
end
else begin
    result[63:56] <= result[63:56];
end
k <= 1'b0;

{k,result[71:64]} <= A_in[71:64] - B_in[71:64];
if(k==1) begin
    result[71:64] <= 8'b00000000;
end
else begin
    result[71:64] <= result[71:64];
end
k <= 1'b0;

{k,result[79:72]} <= A_in[79:72] - B_in[79:72];
if(k==1) begin
    result[79:72] <= 8'b00000000;
end
else begin
    result[79:72] <= result[79:72];
end
k <= 1'b0;

{k,result[87:80]} <= A_in[87:80] - B_in[87:80];
if(k==1) begin
    result[87:80] <= 8'b00000000;
end
else begin
    result[87:80] <= result[87:80];
end
k <= 1'b0;

{k,result[95:88]} <= A_in[95:88] - B_in[95:88];
if(k==1) begin
    result[95:88] <= 8'b00000000;
end
else begin
    result[95:88] <= result[95:88];
end
k <= 1'b0;

{k,result[103:96]} <= A_in[103:96] - B_in[103:96];
if(k==1) begin
    result[103:96] <= 8'b00000000;
end
else begin
    result[103:96] <= result[103:96];
end
k <= 1'b0;

{k,result[111:104]} <= A_in[111:104] - B_in[111:104];
if(k==1) begin
    result[111:104] <= 8'b00000000;
end
else begin
    result[111:104] <= result[111:104];
end
k <= 1'b0;

{k,result[119:112]} <= A_in[119:112] - B_in[119:112];
if(k==1) begin
    result[119:112] <= 8'b00000000;
end
else begin
    result[119:112] <= result[119:112];
end
k <= 1'b0;

{k,result[127:120]} <= A_in[127:120] - B_in[127:120];
if(k==1) begin
    result[127:120] <= 8'b00000000;
end
else begin
    result[127:120] <= result[127:120];
end
k <= 1'b0;
end
2'b01: begin
{k,result[15:0]} <= A_in[15:0] - B_in[15:0];
if(k==1) begin
    result[15:0] <= 16'b0;
end
else begin
    result[15:0] <= result[15:0];
end
k <= 1'b0;

{k,result[31:16]} <= A_in[31:16] - B_in[31:16];
if(k==1) begin
    result[31:16] <= 16'b0;
end
else begin
    result[31:16] <= result[31:16];
end
k <= 1'b0;

{k,result[47:32]} <= A_in[47:32] - B_in[47:32];
if(k==1) begin
    result[47:32] <= 16'b0;
end
else begin
    result[47:32] <= result[47:32];
end
k <= 1'b0;

{k,result[63:48]} <= A_in[63:48] - B_in[63:48];
if(k==1) begin
    result[63:48] <= 16'b0;
end
else begin
    result[63:48] <= result[63:48];
end
k <= 1'b0;

{k,result[79:64]} <= A_in[79:64] - B_in[79:64];
if(k==1) begin
    result[79:64] <= 16'b0;
end
else begin
    result[79:64] <= result[79:64];
end
k <= 1'b0;

{k,result[95:80]} <= A_in[95:80] - B_in[95:80];
if(k==1) begin
    result[95:80] <= 16'b0;
end
else begin
    result[95:80] <= result[95:80];
end
k <= 1'b0;

{k,result[111:96]} <= A_in[111:96] - B_in[111:96];
if(k==1) begin
    result[111:96] <= 16'b0;
end
else begin
    result[111:96] <= result[111:96];
end
k <= 1'b0;

{k,result[127:112]} <= A_in[127:112] - B_in[127:112];
if(k==1) begin
    result[127:112] <= 16'b0;
end
else begin
    result[127:112] <= result[127:112];
end
k <= 1'b0;
end
2'b10: begin
{k,result[31:0]} <= A_in[31:0] - B_in[31:0];
if(k==1) begin
    result[31:0] <= 32'b0;
end
else begin
    result[31:0] <= result[31:0];
end
k <= 1'b0;


{k,result[63:32]} <= A_in[63:32] - B_in[63:32];
if(k==1) begin
    result[63:32] <= 32'b0;
end
else begin
    result[63:32] <= result[63:32];
end
k <= 1'b0;


{k,result[95:64]} <= A_in[95:64] - B_in[95:64];
if(k==1) begin
    result[95:64] <= 32'b0;
end
else begin
    result[95:64] <= result[95:64];
end
k <= 1'b0;


{k,result[127:96]} <= A_in[127:96] - B_in[127:96];
if(k==1) begin
    result[127:96] <= 32'b0;
end
else begin
    result[127:96] <= result[127:96];
end
k <= 1'b0;
end
endcase
end
endcase
end 
endmodule
