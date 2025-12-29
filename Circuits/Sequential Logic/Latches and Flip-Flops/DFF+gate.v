module top_module (
    input clk,
    input in, 
    output out);
    wire a;
    assign a=in^out;
    always@(posedge clk)begin
        if(clk)
            out<=a;
        else
            out<=out;
    end
    
endmodule
