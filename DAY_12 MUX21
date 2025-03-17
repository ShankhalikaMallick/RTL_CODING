RTL:
`timescale 1ns / 1ps
//Date : 17/03/2025
//Name : Shankhalika Mallick

// DAY-12 2X1 MUX

module MUX21(A,sel,out);
input [1:0]A;
input sel;
output out;
assign out=(sel==0)?A[0]:A[1];
endmodule


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TESTBENCH:
`timescale 1ns/1ps
`include "MUX21.v"

module MUX21_TB();
reg sel;
reg [1:0] A;
wire out;
MUX21 ob(A,sel,out);
initial
begin
    $dumpfile("MUX21.vcd");
    $dumpvars(0,MUX21_TB);
    #5 A[0]=0; A[1]=1; sel=0;
    #5 sel=1;
    #5 A[0]=1; A[1]=0; sel=0;
    #5 sel=1;
end
initial
    #8 $monitor($time,"\tA[0]=%b\tA[1]=%b\tsel=%b\tout=%b",A[0],A[1],sel,out);
endmodule

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


OUTPUT:
[Running] MUX21_TB.v
VCD info: dumpfile MUX21.vcd opened for output.
                   8	A[0]=0	A[1]=1	sel=0	out=0
                  10	A[0]=0	A[1]=1	sel=1	out=1
                  15	A[0]=1	A[1]=0	sel=0	out=1
                  20	A[0]=1	A[1]=0	sel=1	out=0
[Done] exit with code=0 in 3.307 seconds

