module piso(
input logic clk,
input logic clr,
input logic sel,
input logic [3:0]d,
output logic sout );
logic [3:0]q;
always @(posedge clk,posedge clr)
if (clr==1) q<=4'b0000;
else if(sel==0) q<=d;
else
begin
sout<=q[0];
q<=q>>1;
end
endmodule
