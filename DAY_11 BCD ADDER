RTL:
`timescale 1ns / 1ps
//Date : 16/03/2025
//Name : Shankhalika Mallick

// DAY-11 4 BIT BCD ADDER

module BCD(A,B,SUM);
input [3:0] A,B;
output reg [5:0] SUM;
reg [5:0] BIN;
always @(*)
begin
    BIN=A+B;
    if(BIN>4'b1001)
    SUM=BIN+ 3'b110;
    else
    SUM=BIN;
end
endmodule


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


TESTBENCH:
`timescale 1ns/1ps
`include "BCD.v"

module BCD_TB();
reg [3:0] A,B;
wire [5:0]SUM;
BCD ob(A,B,SUM);
initial
begin
    $dumpfile("bcd.vcd");
    $dumpvars(0,BCD_TB);
    #5 A=4'b1101; B=4'b1100;
    #5 A=4'b1001; B=4'b0100;
    #5 A=4'b0101; B=4'b0110;
    #5 A=4'b0111; B=4'b0100;
    #5 A=4'b0011; B=4'b0011;
    #5 A=4'b1101; B=4'b1111;
end
initial
#8 $monitor("%b\t%b\t%b",A,B,SUM);
endmodule


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


OUTPUT:
[Running] BCD_TB.v
VCD info: dumpfile bcd.vcd opened for output.
1101	1100	011111
1001	0100	010011
0101	0110	010001
0111	0100	010001
0011	0011	000110
1101	1111	100010
[Done] exit with code=0 in 0.317 seconds



