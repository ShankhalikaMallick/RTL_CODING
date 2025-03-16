RTL:
`timescale 1ns / 1ps
//Date : 15/03/2025
//Name : Shankhalika Mallick

// DAY-10 4 BIT CARRY SKIP ADDER
// DEFINING A FULL ADDER

module FA(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    assign sum=a^b^c;
    assign carry=(a&b)|(b&c)|(c&a);
endmodule


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


`timescale 1ns / 1ps
`include "FA.v"
//Date : 15/03/2025
//Name : Shankhalika Mallick

// DAY-10 4 BIT CARRY SKIP ADDER

module CSA(A,B,CIN,COUT,SUM);
input [3:0] A,B;
input CIN;
output COUT;
output [3:0]SUM;
wire [3:0]C;
wire SEL;
//RIPPLE CARRY ADDER
    FA OB1(A[0],B[0],CIN,SUM[0],C[0]);
    FA OB2(A[1],B[1],C[0],SUM[1],C[1]);
    FA OB3(A[2],B[2],C[1],SUM[2],C[2]);
    FA OB4(A[3],B[3],C[2],SUM[3],C[3]);
//MUX DESCRIPTION
    assign SEL=SUM[0]&SUM[1]&SUM[2]&SUM[3];
    assign COUT= (SEL==0)?C[3]:CIN;
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TESTBENCH:
`timescale 1ns/1ps
`include "CSA.v"

module CSA_TB();
reg [3:0] A,B;
reg CIN;
wire COUT;
wire [3:0] S;
CSA OB(A,B,CIN,COUT,S);
initial
begin
    $dumpfile("CSA.vcd");
    $dumpvars(0,CSA_TB);
    #10 A=4'b1111; B=4'b1111; CIN=1'b0;
    #10 A=4'b1111; B=4'b1111; CIN=1'b1;
    #10 A=4'b1001; B=4'b0110; CIN=1'b1;
    #10 A=4'b1001; B=4'b1011; CIN=1'b0;
    #10 A=4'b1100; B=4'b1100; CIN=1'b1;
end
initial
begin
    $display("\tA\t\tB\t\tCIN\t COUT\t SUM");
    #15 $monitor("\t%b\t%b\t%b\t  %b\t\t%b",A,B,CIN,COUT,S);
    #100 $finish;
    end
endmodule


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


OUTPUT:

[Running] CSA_TB.v
VCD info: dumpfile CSA.vcd opened for output.
	A		B		CIN	 COUT	 SUM
	1111	1111	0	  1		1110
	1111	1111	1	  1		1111
	1001	0110	1	  1		0000
	1001	1011	0	  1		0100
	1100	1100	1	  1		1001
CSA_TB.v:24: $finish called at 115000 (1ps)
[Done] exit with code=0 in 4.364 seconds

