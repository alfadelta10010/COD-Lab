Program 1:
Statement: Write an assembly language for addition of 2 half words and if carry generated then storing it in the memory.
Name of file:<week-2 Q1.s>

Observation - Single Cycle
In this program we first load two numbers into registers and add them and if any carry generated then we store that carry in another register.
Register Mapping
x10-0xffff8123
x11-0xffff9234
x13-0xffff1357
x14-0x00000001
Data Mapping
-0x10000008-0x00000000 
-0x10000004-0x00000000 
-0x10000000-0x92348123



Program 2:
Statement: Write an assembly language for addition of 2 words and if carry generated then store it in the memory.
Name of file:<week-2 Q2.s>
Observation - Single Cycle
In this program we first load two numbers into registers and add them and if any carry generated then we store that carry in another register.
Register Mapping
x12 - 0x00006641
x13 - 0x00000008
x14 - 0x00006649
Data Mapping
0x10000004 - 0x00006649
0x10000000 - 0x00086641

Program 3:

Statement: Write an assembly language for addition of 2 double words and if carry generated then storing it in the memory.

Name of file:
Observation - Single Cycle
.In this program we first load two numbers into registers and add them and if any carry generated then we store that carry in another register.
Register Mapping
x11 - 0x00000052
x12 - 0x00000033
x13 - 0x00000085
Data Mapping
0x10000004 - 0x00000000
0x10000000 - 0x00853352

