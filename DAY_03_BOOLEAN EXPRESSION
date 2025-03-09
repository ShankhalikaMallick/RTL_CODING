RTL CODE:
`timescale 1ns / 1ps
//Date : 08/03/2025
//Name : Shankhalika Mallick

// DAY-3 IMPLEMENTING THE BOOLEAN EXPRESSION : (ABC+A'C'+D)

module boolean_exp(A,B,C,D,OUT);
input A,B,C,D;
output OUT;
assign OUT=(A*B*C)|(!A*!C)|D;
endmodule




TESTBENCH:
`timescale 1ns/1ps
`include "boolean_exp.v"

module exp_tb();
    reg A,B,C,D;
    wire out;
    boolean_exp ob(A,B,C,D,out);

    initial
    begin
    $display("EXPRESSION:  ABC+A'C'+D");
    A=0;B=0;C=0;D=0;
    #10 $display("A=%b B=%b C=%b D=%b OUT=%b ", A,B,C,D,out);
    A=1;B=0;C=0;D=0;
    #10 $display("A=%b B=%b C=%b D=%b OUT=%b ", A,B,C,D,out);
    A=0;B=1;C=1;D=0;
    #10 $display("A=%b B=%b C=%b D=%b OUT=%b ", A,B,C,D,out);
    A=0;B=1;C=0;D=1;
    #10 $display("A=%b B=%b C=%b D=%b OUT=%b ", A,B,C,D,out);
    A=1;B=0;C=1;D=0;
    #10 $display("A=%b B=%b C=%b D=%b OUT=%b ", A,B,C,D,out);
    A=1;B=1;C=1;D=0;
    #10 $display("A=%b B=%b C=%b D=%b OUT=%b ", A,B,C,D,out);
    #20 $finish;
    end
endmodule



OUTPUT:
[Running] exp_tb.v
EXPRESSION:  ABC+A'C'+D
A=0 B=0 C=0 D=0 OUT=1 
A=1 B=0 C=0 D=0 OUT=0 
A=0 B=1 C=1 D=0 OUT=0 
A=0 B=1 C=0 D=1 OUT=1 
A=1 B=0 C=1 D=0 OUT=0 
A=1 B=1 C=1 D=0 OUT=1 
exp_tb.v:24: $finish called at 80000 (1ps)
[Done] exit with code=0 in 0.198 seconds

