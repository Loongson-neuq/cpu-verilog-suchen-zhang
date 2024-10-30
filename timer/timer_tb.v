`timescale 1ns / 1ps
module tb_timer;
reg clk;
reg reset;
wire [7,0] timer_out;
timer uut (
    .clk(clk),
    .reset(reset),
    .timer(timer_out)
);
initial begin
    clk=0;
    forever #5 clk = ~clk;
end
initial begin
    reset = 1;
    #10;
    reset = 0;
    #100;
    $display("Time value:%d",timer_out)
    #100;
    #finish;
end
endmodule