module round_robin(input clk, input [3:0] req,output reg [3:0] grant);
integer i,search,found,j;
initial begin
search=0;//search is required so that i can start the search from wherever i can from requester 0,1,2 or 3//
j=0;
end
always @(negedge clk) begin
found=1'b0;
grant=4'b0000;
for(i=0;i<4;i=i+1) begin
j=search+i;
if(j>=4) begin// j cant be over 3
j=j-4; 
end
if (req[j] && !found) begin
grant[j]=1'b1;
found=1'b1;// when found equals one it remains one till the clock becomes negative edge//
search=j+1;// when found a requester as one at the next negative edge search starts from the next requester//
end
if (search>=4) begin// search cant be over 3
search=0;
end
end
end
endmodule