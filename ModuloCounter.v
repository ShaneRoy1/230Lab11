module ModuloCounter(
    input Enable, Reset, Clk,
    output Q, Bit0, Bit1, Bit2
);

wire compOut;
assign compOut = (~Bit0) & Bit1 & Bit2;

wire realReset;
assign realReset = Reset | compOut;

//bit 0

wire D0;
wire Cout0;

DFlipFlop dff0(
    .D(D0),
    .Clk(Clk),
    .Q(Bit0),
    .Reset(realReset)
);

FullAdder fa0(
    .B(Enable),
    .A(Bit0),
    .Cin(1'b0),
    .Y(D0),
    .Cout(Cout0)
);

//bit 1

wire D1;
wire Cout1;

DFlipFlop dff1(
    .D(D1),
    .Clk(Clk),
    .Q(Bit1),
    .Reset(realReset)
);

FullAdder fa1(
    .B(1'b0),
    .A(Bit1),
    .Cin(Cout0),
    .Y(D1),
    .Cout(Cout1)
);

//bit 2

wire D2;

DFlipFlop dff2(
    .D(D2),
    .Clk(Clk),
    .Q(Bit2),
    .Reset(realReset)
);

FullAdder fa2(
    .B(1'b0),
    .A(Bit2),
    .Cin(Cout1),
    .Y(D2)
);

//output

DFlipFlop dffOut(
    .D(compOut),
    .Clk(Clk),
    .Reset(Reset),
    .Q(Q)
);

endmodule
