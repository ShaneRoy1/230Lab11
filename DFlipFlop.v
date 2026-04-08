module DFlipFlop(
    input D, Clk, Reset,
    output reg Q,
    output QNot
);
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clk) begin
        if (Reset) begin
            Q <= 0;
        end
        else begin
            Q <= D;
        end
    end
    
    assign QNot = ~Q;
endmodule
