module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] first, second;
    assign first = a<b ? a : b;
    assign second = c<d ? c : d;
    assign min = first<second ? first : second;
    
    
endmodule

