module tb();
logic clk,reset, load,sout;
logic [3:0] din,dout;
parall dut( clk,reset, load,din,dout,sout);
initial begin
clk=1'b0;
end
initial begin
forever #40 clk=~clk;
end
initial begin
reset=1;load=1;din=4'b1000;
#40 reset=0;
#200 load=0;
#200 load=1;
end
endmodule
