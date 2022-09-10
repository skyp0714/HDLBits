module top_module (
    input clk,
    input reset,
    output reg [3:0] q);
    always @(posedge clk) begin
        if(reset | q == 4'b1010)
            q <= 4'b001;
        else
            q <= q + 4'b001;  
    end
endmodule
