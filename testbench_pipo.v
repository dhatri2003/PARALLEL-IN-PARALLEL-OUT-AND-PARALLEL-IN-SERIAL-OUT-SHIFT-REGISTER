module tb();
logic clk,ret;
logic [3:0]din,dout;
pipo dut(din,clk,ret,dout);
initial begin
ret=1'b0;
clk=1'b0;
end
initial begin
forever #40 clk=~clk;
end
initial begin
din=4'b0010;
#50 ret=1'b1;
#25 din=4'b0101;
#95 din=4'b110;
#5000 $finish;
end
endmodule
