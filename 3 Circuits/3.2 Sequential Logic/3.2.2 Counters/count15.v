module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output reg [3:0] q);
    always @(posedge clk) begin
        if(reset)
            q <= 3'b000;
        else
            q <= q + 3'b001;  
    end
endmodule
