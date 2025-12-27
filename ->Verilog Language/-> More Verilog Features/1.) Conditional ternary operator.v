module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0]y1,y2;
    
    assign y1 = (a<b)?a:b;
    assign y2 = (c<d)?c:d;
    assign min = (y1<y2)?y1:y2;
    // finds the samllest in a nd b first. Similarly finds the smallest between c and d. Then compares the smallest from 
    // y1 and y2 and then finalizes the smaallest.

endmodule
