module somador (
    input wire [3:0] A,
    input wire [3:0] B,
    output reg [3:0] S
);

always @(*) begin
    S <= A + B;
end

endmodule