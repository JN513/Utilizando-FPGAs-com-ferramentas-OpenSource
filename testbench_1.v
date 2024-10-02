module tb_test();

reg clk;

always #1 clk = ~clk;

initial begin
    $dumpfile("test.vcd");
    $dumpvars;

    clk = 1'b0;

    #50

    $finish;
end

endmodule