RTL:

`timescale 1ns / 1ps
//Date : 17/03/2025
//Name : Shankhalika Mallick

// DAY-13 2X1 MUX

module MUX21(A,sel,out);
input [1:0]A;
input sel;
output out;
assign out=(sel==0)?A[0]:A[1];
endmodule

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  `timescale 1ns / 1ps
`include "MUX21.v"
//Date : 18/03/2025
//Name : Shankhalika Mallick

// DAY-13 4X1 MUX USING 3 2X1 MUX
 
module MUX41(A,sel,out);
input [3:0]A;
input [1:0]sel;
output out;
wire [1:0]w;
    MUX21 ob1(A[1:0],sel[0],w[0]);
    MUX21 ob2(A[3:2],sel[0],w[1]);
    MUX21 ob3(w[1:0],sel[1],out);
endmodule


  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  TESTBENCH:
`timescale 1ns/1ps
`include "MUX41.v"

module MUX41_TB();
reg [1:0]sel;
reg [3:0] A;
wire out;
MUX41 ob(A,sel,out);
initial
begin
    $dumpfile("MUX41.vcd");
    $dumpvars(0,MUX41_TB);
    #5 A[0]=0; A[1]=1; A[2]=0; A[3]=1; sel[0]=0;sel[1]=0;
    #5 sel[0]=1;sel[1]=0;
    #5 A[0]=0; A[1]=1; A[2]=1; A[3]=0; sel[0]=1;sel[1]=1;
    #5 sel[0]=0;sel[1]=1;
end
initial
    #8 $monitor($time,"\tA[0]=%b\tA[1]=%b\tA[2]=%b\tA[3]=%b\tsel=%b\tout=%b",A[0],A[1],A[2],A[3],sel[1:0],out);
endmodule



  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  OUTPUT:
[Running] MUX41_TB.v
VCD info: dumpfile MUX41.vcd opened for output.
                   8	A[0]=0	A[1]=1	A[2]=0	A[3]=1	sel=00	out=0
                  10	A[0]=0	A[1]=1	A[2]=0	A[3]=1	sel=01	out=1
                  15	A[0]=0	A[1]=1	A[2]=1	A[3]=0	sel=11	out=0
                  20	A[0]=0	A[1]=1	A[2]=1	A[3]=0	sel=10	out=1
[Done] exit with code=0 in 4.245 seconds

