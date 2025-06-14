module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire and_1;
    wire and_2;

    assign and_1 = (p1c && p1b) && p1a;
    assign and_2 = (p1f && p1e) && p1d;

    assign p2y = (p2a && p2b) || (p2c && p2d);
    assign p1y = and_1 || and_2;
    

endmodule
