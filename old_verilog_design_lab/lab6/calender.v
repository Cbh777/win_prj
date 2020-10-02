module calender (CLK_IN, RST, SECOND, MINUTE, HOUR);
input            CLK_IN;
input            RST;
output  [4:0]    HOUR;
output  [5:0]    MINUTE;
output  [5:0]    SECOND;

reg     [4:0]    HOUR;
reg     [5:0]    MINUTE;
reg     [5:0]    SECOND;

parameter   SECOND_MAX = 6'd59;
parameter   MINUTE_MAX = 6'd59;
parameter   HOUR_MAX = 5'd23;


//----------------------SECOND------------------------------
always @(posedge CLK_IN or posedge RST)
begin
    if(RST)
      SECOND <= 6'd0;
    else if (SECOND >= SECOND_MAX)
      SECOND <= 6'd0;
    else
      SECOND <= SECOND + 6'd1;
end

//----------------------MINUTE------------------------------
always @(posedge CLK_IN or posedge RST)
begin
    if(RST)
      MINUTE <= 6'd0;
    else if ( (MINUTE >= MINUTE_MAX)&&(SECOND >= SECOND_MAX) )
      MINUTE <= 6'd0;
    else if (SECOND >= SECOND_MAX)
      MINUTE <= MINUTE + 6'd1;
    else
      MINUTE <= MINUTE;    //This is a FF actually,and it is unnessary to write down
end

//----------------------HOUR------------------------------
always @(posedge CLK_IN or posedge RST)
begin
    if(RST)
      HOUR <= 5'd0;
    else if ( (HOUR >= HOUR_MAX)&&(MINUTE >= MINUTE_MAX)&&(SECOND >= SECOND_MAX) )
      HOUR <= 5'd0;
    else if ( (MINUTE >= MINUTE_MAX)&(SECOND >= SECOND_MAX) )
      HOUR <= HOUR + 5'd1;
    else
      HOUR <= HOUR;
end

endmodule 




