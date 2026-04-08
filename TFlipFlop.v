module TFlipFlop(
    input T, Clk, Reset,
    output Q, QNot
);

wire dIn;
assign dIn = T ^ Q;

DFlipFlop dff (
    .D(dIn),
    .Clk(Clk),
    .Reset(Reset),
    .Q(Q),
    .QNot(QNot)
);

endmodule
