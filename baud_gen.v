module baud_gen
#(parameter CLKS_PER_BIT=5208)
(
input clk,
input reset,
output reg baud_tick
);
reg[15:0]count;
always@(posedge clk or posedge reset)
begin
if(reset)
begin
count<=0;
baud_tick<=0;
end
else if(count == CLKS_PER_BIT-1)
begin
count<=0;
baud_tick<=1;
end
else
begin
count<=count+1;
baud_tick<=0;
end
end 
endmodule