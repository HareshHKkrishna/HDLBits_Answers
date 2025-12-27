// My Solution

module top_module( 
    input [99:0] in,
    output reg [99:0] out
);
    int i;
    always@(*)begin
    
    for(i=0;i<=99;i=i+1)begin
        out[i] = in[99-i];
    end
    end
    
endmodule

/* 

HDLBITS solution. Similar but the only change is the usage of a new function called $bits() to return the width of the bus/vector.

module top_module (
	input [99:0] in,
	output reg [99:0] out
);
	
	always @(*) begin
		for (int i=0;i<$bits(out);i++)		// $bits() is a system function that returns the width of a signal.
			out[i] = in[$bits(out)-i-1];	// $bits(out) is 100 because out is 100 bits wide.
	end
	
endmodule */
