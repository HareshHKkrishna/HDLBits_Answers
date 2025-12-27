module top_module( 
    input [99:0] a, b,
    input cin,
    output reg [99:0] cout,
    output reg [99:0] sum );
    
    always@(*)begin
        sum=99'b0;
        cout=99'b0;
        for(int i=0;i<100;i++)begin
            if(i==0)begin
                sum[i]=a[i]^b[i]^cin;
                cout[i]=(a[i]&b[i])+(a[i]&cin)+(b[i]&cin);
            end
            else begin
                sum[i]=a[i]^b[i]^cout[i-1];
                cout[i]=(a[i]&b[i])+(a[i]&cout[i-1])+(b[i]&cout[i-1]);
            end
        end
    end
endmodule
