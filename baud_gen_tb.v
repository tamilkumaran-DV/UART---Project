module baud_gen_tb;
reg clk;
reg reset;
wire baud_tick;
baud_gen #(5208) DUT (
    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick)
);
always #10 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    #50;
    reset = 0;
    #120000;

    $finish;
end

initial
begin
    $monitor("Time=%0t Reset=%b Baud_Tick=%b",
              $time, reset, baud_tick);
end

endmodule