module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire carry;
    wire [15:0] add_result1, add_result2;
    add16 add1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(carry), .sum(add_result1));
    add16 add2(.a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(add_result2));
    assign sum = {add_result2, add_result1};
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign {cout, sum} = a + b + cin;
endmodule