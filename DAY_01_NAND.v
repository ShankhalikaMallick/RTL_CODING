////////////////////////////////////////////////////////RTL CODE:////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//Date : 06/03/2025
//Name : Shankhalika Mallick

// DAY-1 NAND gate to implement all gates: NAND, NOT, AND. OR, NOR, XOR, XNOR

module NAND_GATE(a,b,nandab,nota,andab,orab,norab,xorab,xnorab);
    input a,b;
    output nandab,nota,andab,orab,norab,xorab,xnorab;
    wire notb;
    wire P,Q;

    //NAND gate
    assign nandab= ~(a&b);

    //NOT gate
    assign nota= ~(a&a);

    //AND gate
    assign andab= ~(nandab & nandab);

    //OR gate
    assign notb=~(b&b);
    assign orab= ~(nota & notb);

    // NOR gate
    assign norab=~(orab & orab);

    //XOR gate
    assign P=~(a & nandab);
    assign Q=~(b & nandab);
    assign xorab=~(P&Q);

    //XNOR gate
    assign xnorab=~(xorab & xorab);
endmodule





///////////////////////////////////////////////////////TESTBENCH://///////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
`include "NAND_GATE.v"

module NAND_TB();
    reg a,b;
    wire nandab,nota,andab,orab,norab,xorab,xnorab;
    NAND_GATE ob(a,b,nandab,nota,andab,orab,norab,xorab,xnorab);
    initial
    begin
         $display ("A  B  (A.B)'  !A   AB   A|B  (A|B)'   A^B   (A^B)' ");
         a=0;b=0;
        #5 $display ("%b  %b    %b    %b     %b     %b      %b     %b     %b ",a,b,nandab,nota,andab,orab,norab,xorab,xnorab);
         a=0;b=1;
        #5 $display ("%b  %b    %b    %b     %b     %b      %b     %b     %b ",a,b,nandab,nota,andab,orab,norab,xorab,xnorab);
         a=1; b=0;
        #5 $display ("%b  %b    %b    %b     %b     %b      %b     %b     %b ",a,b,nandab,nota,andab,orab,norab,xorab,xnorab);
         a=1; b=1;
        #5 $display ("%b  %b    %b    %b     %b     %b      %b     %b     %b ",a,b,nandab,nota,andab,orab,norab,xorab,xnorab);
    end
endmodule




////////////////////////////////////////////////////////////OUTPUT:///////////////////////////////////////////////////////////////////////////////////////////
/*
[Running] NAND_TB.v
A  B  (A.B)'  !A   AB   A|B  (A|B)'   A^B   (A^B)' 
0  0    1    1     0     0      1     0     1 
0  1    1    1     0     1      0     1     0 
1  0    1    0     0     1      0     1     0 
1  1    0    0     1     1      0     0     1 
[Done] exit with code=0 in 0.235 seconds
*/
