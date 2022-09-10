module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output reg [15:0] q);
    assign ena = {q[3:0] == 4'd9 && q[7:4] == 4'd9 && q[11:8] == 4'd9, q[3:0] == 4'd9 && q[7:4] == 4'd9, q[3:0] == 4'd9};
always @ (posedge clk) begin
    if(reset | ena[3] & q[15:12] == 4'd9)
        q <= 16'b0;
    else if(ena[3])begin
        q[3:0] <= 4'b0;
        q[7:4] <= 4'b0;
        q[11:8] <= 4'b0;
        q[15:12] <= q[15:12]+1'b1;
    end
    else if(ena[2])begin
        q[3:0] <= 4'b0;
        q[7:4] <= 4'b0;
        q[11:8] <= q[11:8]+1'b1;
    end
    else if(ena[1])begin
        q[3:0] <= 4'b0;
        q[7:4] <= q[7:4]+1'b1;
    end
    else
        q[3:0] <= q[3:0]+1'b1;

end 
endmodule
