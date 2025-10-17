RTL:
`timescale 1ns / 1ps
//Date : 13/03/2025
//Name : Shankhalika Mallick

// DAY-8 4 BIT RIPPLE CARRY ADDER
// DEFINING A FULL ADDER

module FA(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    assign sum=a^b^c;
    assign carry=(a&b)|(b&c)|(c&a);
endmodule



`timescale 1ns / 1ps
`include "FA.v"
//Date : 13/03/2025
//Name : Shankhalika Mallick

// DAY-8 4 BIT RIPPLE CARRY ADDER
// DEFINING RIPPLE CARRY ADDER BY USING 4 FULL ADDERS

module RCA(A,B,CIN,COUT,S);
input [3:0] A,B;
input CIN;
output [3:0] S;
output COUT;
wire [4:0] C;
    assign C[0]= CIN;
    assign COUT=C[4];
    FA ob1(.a(A[0]),.b(B[0]),.c(C[0]),.sum(S[0]),.carry(C[1]));
    FA ob2(.a(A[1]),.b(B[1]),.c(C[1]),.sum(S[1]),.carry(C[2]));
    FA ob3(.a(A[2]),.b(B[2]),.c(C[2]),.sum(S[2]),.carry(C[3]));
    FA ob4(.a(A[3]),.b(B[3]),.c(C[3]),.sum(S[3]),.carry(C[4]));
endmodule




TESTBENCH:
`timescale 1ns/1ps
`include "RCA.v"

module RCA_TB();
reg [3:0] A,B;
reg CIN;
wire COUT;
wire [3:0]S;
wire [4:0]out;
RCA OB(A,B,CIN,COUT,S);
assign out={COUT,S};
 initial 
 begin
    $dumpfile("RCA_OP.vcd");
    $dumpvars(0,RCA_TB);
    $monitor(" %d\t%d\t%d", A,B,out);
    //output is displayed in decimal numbers
    CIN=0;
    A=4'b0; B=4'b0;
    #5 A=4'b1011; B=4'b1010;
    #5 A=4'b1110; B=4'b1011;
    #5 A=4'b0011; B=4'b1110;
    #5 A=4'b1111; B=4'b1111;
    #5 A=4'b1000; B=4'b1000;
    #5 A=4'b1001; B=4'b0110;
    #5 A=4'b1010; B=4'b1111;
    #5 A=4'b0101; B=4'b1101;
 end
endmodule




OUTPUT:
[Running] RCA_TB.v
VCD info: dumpfile RCA_OP.vcd opened for output.
  0	 0	 0
 11	10	21
 14	11	25
  3	14	17
 15	15	30
  8	 8	16
  9	 6	15
 10	15	25
  5	13	18
[Done] exit with code=0 in 6.284 seconds

