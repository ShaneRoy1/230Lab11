module top(
    input btnU, btnC,
    output [6:0] led
);

RippleCounter rc(
    .Clk(btnC),
    .Reset(btnU),
    .Stage1(led[0]),
    .Stage2(led[1]),
    .Stage3(led[2])
);

ModuloCounter mc(
    .Clk(btnC),
    .Reset(btnU),
    .Enable(1'b1),
    .Bit0(led[3]),
    .Bit1(led[4]),
    .Bit2(led[5]),
    .Q(led[6])
);

endmodule
