module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @* begin
        if((in & 4'b0001) != 4'b0)
            pos = 2'b00;
        else if((in & 4'b0010) != 4'b0)
            pos = 2'b01;
        else if((in & 4'b0100) != 4'b0)
            pos = 2'b10;
        else if((in & 4'b1000) != 4'b0)
            pos = 2'b11;
        else 
            pos = 2'b00;
    end
endmodule