module top_module (
    input clk, 
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);

    wire [7:0] qd1;
    wire [7:0] qd2;
    wire [7:0] qd3;

    my_dff8 dff1(.clk(clk), .d(d), .q(qd1));
    my_dff8 dff2(.clk(clk), .d(qd1), .q(qd2));
    my_dff8 dff3(.clk(clk), .d(qd2), .q(qd3));

    always @(*) begin
        case (sel)
            2'b00: q = d;
            2'b01: q = qd1;
            2'b10: q = qd2;
            2'b11: q = qd3;
        endcase
    end

endmodule