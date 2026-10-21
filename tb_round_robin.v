module tb_round_robin;
reg clk;
reg [3:0] req;
wire [3:0] grant;
round_robin uut (
.clk(clk),
.req(req),
.grant(grant)
);
initial begin
clk = 0;
forever #5 clk = ~clk;// clock frequency is 10Mhz//
end
initial begin
req = 4'b0000;#10;
req = 4'd1;#40; // clock frequency is 10Mhz so output frequency should be 10Mhz/4 //
req = 4'd2;#40;
req = 4'd3;#40;
req = 4'd4;#40;
req = 4'd5;#40;
req = 4'd6;#40;
req = 4'd7;#40;
req = 4'd8;#40;
req = 4'd9;#40;
req = 4'd10;#40;
$finish;
end
endmodule