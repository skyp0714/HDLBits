module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
wire [99:0] carries;
bcd_fadd bcds [99:0](.a(a), .b(b), .cin({carries, cin}), .cout({cout, carries}), .sum(sum));

endmodule

