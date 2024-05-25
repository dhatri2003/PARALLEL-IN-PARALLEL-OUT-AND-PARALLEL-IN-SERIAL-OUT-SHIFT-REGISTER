module tb( );
logic clk,clr,sel,sout;
logic [3:0] d;
piso dut(clk,clr,sel,d,sout);
initial begin
clk=0;
forever #1 clk=~clk;
end
initial begin
clr=1;
#2 clr=0;
sel=0;
d=4'b0100;
#4 sel=1;
#10 sel=0;
d=4'b1110;
#2 sel=1;
#100 $finish;
end
endmodule
