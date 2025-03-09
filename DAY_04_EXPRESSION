RTL CODE:
`timescale 1ns / 1ps
//Date : 09/03/2025
//Name : Shankhalika Mallick

// DAY-4 IMPLEMENTING A LOGICAL EXPRESSION
// expression: bc'e + a'ce' + ab'cf' + bc'def + b'c'def + a'b'c'df + a'b'd'e'f

module mini_expression(a,b,c,d,e,f,out);
    input a,b,c,d,e,f;
    output out;
    wire w1,w2,w3,w4,w5,w6;
    assign w1=(a & !b & c & !f);
    assign w2=(b & !c & e);
    assign w3=(!b & !c & d & f);
    assign w4= e | !a;
    assign w5=!a & !e;
    assign w6= e| (!b & !d & f);
    assign out=w1|w2|(w3&w4)|(w5&w6);
endmodule



TESTBENCH:
`timescale 1ns / 1ps
`include "expression.v"
module expression_tb();
reg a,b,c,d,e,f;
wire out;
mini_expression ob(a,b,c,d,e,f,out);
initial begin 
a=0;b=0;c=0;d=0;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=0;c=0;d=0;e=0;f=1;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=0;c=0;d=0;e=1;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=0;c=0;d=1;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=0;c=1;d=0;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=1;c=0;d=0;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=1;b=0;c=0;d=0;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=1;b=1;c=0;d=0;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=1;b=1;c=1;d=0;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=1;b=1;c=1;d=1;e=0;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=1;b=1;c=0;d=1;e=1;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=0;c=1;d=0;e=1;f=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
a=0;b=0;c=1;d=0;e=1;f=1;
#10;
$display("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,out);
$finish();
end
endmodule



OUTPUT:
[Running] expression_tb.v
a=0,b=0,c=0,d=0,e=0,f=0,y=0
a=0,b=0,c=0,d=0,e=0,f=1,y=1
a=0,b=0,c=0,d=0,e=1,f=0,y=0
a=0,b=0,c=0,d=1,e=0,f=0,y=0
a=0,b=0,c=1,d=0,e=0,f=0,y=0
a=0,b=1,c=0,d=0,e=0,f=0,y=0
a=1,b=0,c=0,d=0,e=0,f=0,y=0
a=1,b=1,c=0,d=0,e=0,f=0,y=0
a=1,b=1,c=1,d=0,e=0,f=0,y=0
a=1,b=1,c=1,d=1,e=0,f=0,y=0
a=1,b=1,c=0,d=1,e=1,f=0,y=1
a=0,b=0,c=1,d=0,e=1,f=0,y=0
a=0,b=0,c=1,d=0,e=1,f=1,y=0
expression_tb.v:47: $finish called at 130000 (1ps)
[Done] exit with code=0 in 0.156 seconds

