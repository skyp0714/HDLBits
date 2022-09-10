module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
wire [31:0] prep_b;
assign prep_b = (b ^ {32{sub}}) + {31'b0,sub};

wire carry;
    wire [15:0] add_result1, add_result2;
    add16 add1(.a(a[15:0]), .b(prep_b[15:0]), .cin(1'b0), .cout(carry), .sum(add_result1));
    add16 add2(.a(a[31:16]), .b(prep_b[31:16]), .cin(carry), .sum(add_result2));
    assign sum = {add_result2, add_result1};

endmodule