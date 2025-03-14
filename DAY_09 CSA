RTL: 
`timescale 1ns / 1ps
//Date : 14/03/2025
//Name : Shankhalika Mallick

// DAY-9 4 BIT CARRY SELECT ADDER
// DEFINING A FULL ADDER

module FA(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    assign sum=a^b^c;
    assign carry=(a&b)|(b&c)|(c&a);
endmodule

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

`timescale 1ns / 1ps
//Date : 14/03/2025
//Name : Shankhalika Mallick

// DAY-9 4 BIT CARRY SELECT ADDER
// DEFINING A 2X1 MUX

module MUX21(A,sel,out);
    input [1:0]A;
    output out;
    input sel;
    assign out=(sel==0)?A[0]:A[1];
endmodule


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

`timescale 1ns / 1ps
`include "FA.v"
`include "MUX21.v"
//Date : 14/03/2025
//Name : Shankhalika Mallick

// DAY-9 4 BIT CARRY SELECT ADDER

module CSA(A,B,CIN,COUT,S);
    input [3:0] A,B;
    input CIN;
    output COUT;
    output [3:0] S;
    wire [7:0] W; // storing the carry output of individual full adders
    wire [3:0] M, N; //storing the sum output of individual full adders

    // FOR CIN=0
    FA OB1(A[0],B[0],1'b0,M[0],W[0]);
    FA OB2(A[1],B[1],W[0],M[1],W[1]);
    FA OB3(A[2],B[2],W[1],M[2],W[2]);
    FA OB4(A[3],B[3],W[2],M[3],W[3]);

    //FOR CIN=1
    FA OB5(A[0],B[0],1'b1,N[0],W[4]);
    FA OB6(A[1],B[1],W[4],N[1],W[5]);
    FA OB7(A[2],B[2],W[5],N[2],W[6]);
    FA OB8(A[3],B[3],W[6],N[3],W[7]);
    
    //MUX TO GENERATE COUT
    MUX21 DUT({W[7],W[3]},CIN,COUT);

    //MUX TO GENERATE SUM OUTPUT
    MUX21 DUT1({N[0],M[0]},CIN,S[0]);
    MUX21 DUT2({N[1],M[1]},CIN,S[1]);
    MUX21 DUT3({N[2],M[2]},CIN,S[2]);
    MUX21 DUT4({N[3],M[3]},CIN,S[3]);
endmodule

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
[Done] exit with code=0 in 2.305 seconds
