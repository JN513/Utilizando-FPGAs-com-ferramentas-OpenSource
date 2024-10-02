module tb_somador();

reg [3:0] A, B;
wire [3:0] S;

initial begin
    $dumpfile("somador.vcd");
    $dumpvars;

    A = 4'd7;
    B = 4'd5;
    #1
    if(S == 4'd12)
        $display("Correto");
    else
        $display("Incorreto");
    
    $finish;
end

somador U1(
    .A(A),
    .B(B),
    .S(S)
);

endmodule