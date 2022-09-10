module top_module (
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

    always @(posedge clk) begin
        if(reset | q == 4'b1001 & slowena)
            q <= 4'b000;
        else if(slowena)
            q <= q + 4'b001;  
    end

endmodule
