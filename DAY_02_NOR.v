/////////////////////////////////////////////////////RTL CODE:////////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//Date : 07/03/2025
//Name : Shankhalika Mallick

// DAY-2 NOR gate to implement all gates

module NOR_GATE(a,b,norab,nota,andab,orab,nandab,xorab,xnorab);
    input a,b;
    output norab,nota,andab,orab,nandab,xorab,xnorab;
    wire notb;
    wire P,Q;

    //NOR GATE
    assign norab=~(a|b);

    //NOT GATE
    assign nota=~(a|a);

    //AND GATE
    assign notb=~(b|b);
    assign andab=~(nota|notb);

    //OR GATE
    assign orab=~(norab|norab);

    //NAND GATE
    assign nandab=~(andab|andab);

    //XNOR GATE
    assign P=~(a|norab);
    assign Q=~(b|norab);
    assign xnorab=~(P|Q);

    //XOR GATE
    assign xorab=~(xnorab|xnorab);
endmodule 






/////////////////////////////////////////////////////TESTBENCH:///////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
`include "NOR_GATE.v"

module NOR_TB();
    reg a,b;
    wire norab,nota,andab,orab,nandab,xorab,xnorab;
    NOR_GATE ob(a,b,norab,nota,andab,orab,nandab,xorab,xnorab);
    initial
    begin
         $display ("A  B  (A|B)'  !A   AB   A|B  (A.B)'  (A^B)   A^B ");
         a=0;b=0;
        #5 $display ("%b  %b    %b     %b     %b     %b      %b      %b      %b ",a,b,norab,nota,andab,orab,nandab,xorab,xnorab);
         a=0;b=1;
        #5 $display ("%b  %b    %b     %b     %b     %b      %b      %b      %b ",a,b,norab,nota,andab,orab,nandab,xorab,xnorab);
         a=1; b=0;
        #5 $display ("%b  %b    %b     %b     %b     %b      %b      %b      %b ",a,b,norab,nota,andab,orab,nandab,xorab,xnorab);
         a=1; b=1;
        #5 $display ("%b  %b    %b     %b     %b     %b      %b      %b      %b ",a,b,norab,nota,andab,orab,nandab,xorab,xnorab);
    end
endmodule



//////////////////////////////////////////////////////OUTPUT://///////////////////////////////////////////////////////////////////////////////////////////////
/*
[Running] NOR_TB.v
A  B  (A|B)'  !A   AB   A|B  (A.B)'  (A^B)   A^B 
0  0    1     1     0     0      1      0      1 
0  1    0     1     0     1      1      1      0 
1  0    0     0     0     1      1      1      0 
1  1    0     0     1     1      0      0      1 
[Done] exit with code=0 in 2.712 seconds

*/
