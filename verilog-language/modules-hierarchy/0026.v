module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    
    wire cout;
    wire cout_2;

    add16 add1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(cout));
    add16 add2(.a(a[31:16]), .b(b[31:16]), .cin(cout), .sum(sum[31:16]), .cout(cout_2));
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    assign sum = (a + b + cin);
    assign cout = (a & b) | (cin & a) | (cin & b);

endmodule
