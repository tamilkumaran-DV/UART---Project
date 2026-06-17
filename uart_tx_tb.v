module uart_tx_tb;
reg clk;
reg reset;
reg tx_start;
reg [7:0] data_in;
wire tx;
wire tx_done;
uart_tx uut (
    .clk(clk),
    .reset(reset),
    .tx_start(tx_start),
    .data_in(data_in),
    .tx(tx),
    .tx_done(tx_done)
);
always #5 clk = ~clk;
initial
begin
    clk = 0;
    reset = 1;
    tx_start = 0;
    data_in = 8'b10101010;
    #10 reset = 0;          
    #10 tx_start = 1;     
    #10 tx_start = 0;
    #200 $finish;
end
endmodule