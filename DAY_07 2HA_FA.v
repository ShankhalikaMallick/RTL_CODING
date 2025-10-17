RTL CODE:
`timescale 1ns / 1ps
//Date : 12/03/2025
//Name : Shankhalika Mallick

// DAY-7 FULL ADDER USING 2 HALF ADDERS
// DEFINING A HALF ADDER

module HA(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule





`timescale 1ns / 1ps
`include "HA.v"
//Date : 11/03/2025
//Name : Shankhalika Mallick

// DAY-7 FULL ADDER USING 2 HALF ADDERS
// DEFINING A FULL ADDER STRUCTURAL FORM

module HA_2FA(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    wire w1,w2,w3;
    HA ob1(.a(a),.b(b),.s(w1),.c(w2));
    HA ob2(.a(c),.b(w1),.s(sum),.c(w3));
    assign carry=w2|w3;
endmodule




TESTBENCH:
`timescale 1ns/1ps
`include "HA_2FA.v"

module FA_TB();
reg a,b,c;
wire s,cout;
integer i=1'd0;
     HA_2FA OB(.a(a),.b(b),.c(c),.sum(s),.carry(cout));
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
    #50 $finish;
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
FA_TB.v:21: $finish called at 130000 (1ps)
[Done] exit with code=0 in 0.314 seconds
