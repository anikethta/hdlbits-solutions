module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] s1, s2;
    wire cout;
    wire cout2, cout3;

    add16 add1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(cout));
    add16 add2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(s1), .cout(cout2));
    add16 add3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(s2), .cout(cout3));
    
    assign sum[31:16] = (cout) ? s2 : s1;
    
endmodule