module RippleCounter(
    input Clk, Reset,
    output Stage1, Stage2, Stage3
);

TFlipFlop tff0 (
    .T(1'b1),
    .Clk(Clk),
    .Reset(Reset),
    .Q(Stage1)
);

TFlipFlop tff1 (
    .T(1'b1),
    .Clk(Stage1),
    .Reset(Reset),
    .Q(Stage2)
);

TFlipFlop tff2 (
    .T(1'b1),
    .Clk(Stage2),
    .Reset(Reset),
    .Q(Stage3)
);

endmodule
