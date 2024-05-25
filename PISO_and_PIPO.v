module parall(
input logic clk,
input logic reset,
input logic load,
input logic [3:0] din,
output logic [3:0] dout,
output logic sout
);
/* logic clk_div=0;
logic [27:0]count=0;
always@ (posedge clk)
begin
count<=count+1;
if(count[27]==1)
begin
clk_div<=~(clk_div);
count<=0;
end
end*/
logic [3:0]temp;
always_ff @(posedge clk,posedge reset)

6 | P a g e
if(reset) dout<=0;
else if(load)
begin
dout<=din;
temp<=din;
end
else
begin
sout<=temp[3];
temp<={temp[2:0],1'b0};
end
endmodule
