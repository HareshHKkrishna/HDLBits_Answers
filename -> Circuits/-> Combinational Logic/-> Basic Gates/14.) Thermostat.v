module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    assign heater = (mode & too_cold);
    assign aircon = (~mode & too_hot);
    assign fan = (heater == 1 || aircon == 1 || fan_on == 1) ? 1'b1:1'b0;
   
endmodule
