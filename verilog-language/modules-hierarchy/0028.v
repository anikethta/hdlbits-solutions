module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
    wire [31:0] b_s;
    
    assign b_s = (b) ^ ({32{sub}});
    
    add16 add1(.a(a[15:0]), .b(b_s[15:0]), .cin(sub), .sum(sum[15:0]), .cout(cout));
    add16 add2(.a(a[31:16]), .b(b_s[31:16]), .cin(cout), .sum(sum[31:16]), .cout());
    
endmodule
