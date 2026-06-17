module uart_rx_tb;
reg clk;
reg reset;
reg rx;
wire[7:0]data_out;
wire rx_done;
uart_rx uut(.clk(clk),.reset(reset),.rx(rx),.data_out(data_out),.rx_done(rx_done));
always #5 clk=~clk;
initial 
begin
clk=0;
reset=1;
rx=1;
#10 reset=0;
#10 rx=0;
  // Data = 10101010
    #10 rx = 0;  // D0
    #10 rx = 1;  // D1
    #10 rx = 0;  // D2
    #10 rx = 1;  // D3
    #10 rx = 0;  // D4
    #10 rx = 1;  // D5
    #10 rx = 0;  // D6
    #10 rx = 1;  // D7
	 #10 rx=1;
	 #100 $finish;
	 end
	 endmodule