# HDL CODE:
## FOR PIPO:
module pipo(
input logic [3:0] din,
input logic clk,
input logic ret,
output logic [3:0] dout
);
always_ff @(posedge clk or negedge ret)
if(!ret) begin
dout <= 4'b0;
end
else
begin
dout <= din;
end
endmodule
