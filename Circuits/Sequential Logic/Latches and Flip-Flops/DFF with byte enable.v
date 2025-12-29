module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always@(posedge clk)begin
        if(~resetn)begin
        	if(byteena==2'b01)begin
                q[7:0]<=8'b0;
        	end
        	else if(byteena==2'b10)begin
                q[15:8]<=8'b0;
        	end
            else if(byteena==2'b11)begin
                q<=0;
            end
            else begin
                q<=q;
            end
        end
        else begin
            if(byteena==2'b01)begin
                q[7:0] <=d[7:0];
                q[15:8]<=q[15:8];
        	end
        	else if(byteena==2'b10)begin
                q[7:0] <=q[7:0];
                q[15:8]<=d[15:8];
        	end
            else if(byteena==2'b11)begin
                q[7:0] <=d[7:0];
                q[15:8]<=d[15:8];
            end
            else begin
                q<=q;
            end
        end
    end

endmodule
