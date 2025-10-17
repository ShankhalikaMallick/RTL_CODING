RTL CODE:
`timescale 1ns/ 1ps
//Date : 11/03/2025
//Name : Shankhalika Mallick

// DAY-6 FULL ADDER

module FA(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule




TESTBENCH:
`timescale 1ns/1ps
`include "FA.v"

module FA_TB();
reg a,b,c;
wire s,cout;
integer i=1'd0;
FA ob(.a(a),.b(b),.c(c),.sum(s),.carry(cout));
initial
begin
    a=0;b=0;c=0;
    $dumpfile("fulladder.vcd");
    $dumpvars(0,FA_TB);
    $display("a\tb\tc\tsum\tcarry\t");
    $monitor("%b\t%b\t%b\t%b\t%b",a,b,c,s,cout);
    for(i=0;i<8;i=i+1)
    begin
        #10
        {a,b,c}=i;
    end
end
endmodule




OUTPUT:
[Running] FA_TB.v
VCD info: dumpfile fulladder.vcd opened for output.
a	b	c	sum	carry	
0	0	0	0	0
0	0	1	1	0
0	1	0	1	0
0	1	1	0	1
1	0	0	1	0
1	0	1	0	1
1	1	0	0	1
1	1	1	1	1
[Done] exit with code=0 in 5.527 seconds
