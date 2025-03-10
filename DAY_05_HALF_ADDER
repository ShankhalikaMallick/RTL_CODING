RTL CODE:
`timescale 1ns / 1ps
//Date : 10/03/2025
//Name : Shankhalika Mallick

// DAY-5 HALF ADDER IMPLEMENTATION

module HA(a,b,sum,carry);
    input a,b;
    output sum, carry;
    assign sum=a^b;
    assign carry=a&b;
endmodule


  
  
TESTBENCH:
`timescale 1ns / 1ps
`include "HA.v"

module HA_TB();
reg a,b;
wire s,c;
HA ob(.a(a),.b(b),.sum(s),.carry(c));
initial
begin
    #5 $display("a\tb\tsum\tcarry");
    a=0;b=0;
    #5 $display("%b\t%b\t%b\t%b", a,b,s,c);
    a=0;b=1;
    #5 $display("%b\t%b\t%b\t%b", a,b,s,c);
    a=1;b=0;
    #5 $display("%b\t%b\t%b\t%b", a,b,s,c);
    a=1;b=1;
    #5 $display("%b\t%b\t%b\t%b", a,b,s,c);
end
endmodule



  
OUTPUT:
[Running] HA_TB.v
a	b	sum	carry
0	0	0	0
0	1	1	0
1	0	1	0
1	1	0	1
[Done] exit with code=0 in 1.135 seconds

