module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
); //
    wire [3:0] q0, q1, q2;
    assign OneHertz = (q0 == 4'b1001) & (q1 == 4'b1001) & (q2 == 4'b1001);
    assign c_enable = {q0 == 4'b1001 && q1 == 4'b1001, q0 == 4'b1001, 1'b1};
    bcdcount counter0 (clk, reset, c_enable[0], q0);
    bcdcount counter1 (clk, reset, c_enable[1], q1);
    bcdcount counter2 (clk, reset, c_enable[2], q2);

endmodule