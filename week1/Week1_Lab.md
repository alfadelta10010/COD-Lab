Statement: Write an Assembly Program for addition of 2 words
Name of file: week1a.s
Observation - 2 words 0xffffffff and 0xffffffff are getting loaded in x11 and x12 registers respectively. then those two registers value is added to get the  result  later the result is stored in x16 register
Register Mapping
x16 = 0x00000001  x13 = 0xfffffffe 
x11 = 0xffffffff   x12 = 0xffffffff
x2 = 0x7ffffff0    x1 = 0x10000000

Data Mapping
Address          Word 
0x1000000c     0x00000001
0x10000008     0xfffffffe
0x10000004     0xffffffff
0x10000000     0xffffffff

Program 2:
Statement: Write an Assembly Program for addition of 2 half words
Name of file:week1b.s
Observation - 2 half words 0x0135, 0x5674 are getting loaded in x12 and x11 registers respectively. then those two registers value is added to get the  result  later the result is stored in x13 register
Register Mapping
x13 = 0x000057a9  x11 = 0x00000135
x12 = 0x00005674   x2 = 0x7ffffff0 
x1 = 0x10000000

Data Mapping
Address          Word 
0x10000008      0x00000000
0x10000004      0x000057a9
0x10000000      0x56740135

Program 3:
Statement: Write an Assembly Program for addition of 2 bytes
Name of file:week1c.s
Observation - 2 bytes 0x12, 0x34 are getting loaded in x11 and x12 registers respectively. then those two registers value is added to get the  result later the result is stored in x13 register
Register Mapping
x13 = 0x00000046    x12 = 0x00000034
x11 = 0x00000012     x2 = 0x7ffffff0 
x1 = 0x10000000


Data Mapping
Address         Word 
0x10000004    0x00000000
0x10000000    0x46003412


Program 4:
Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
Name of file:week1d.s
Observation - to check how signed and unsigned word ,half  and byte is stored in register
Register Mapping
x14 = 0x00000012   x13 = 0x00000012
x12 = 0x00001234    x11 = 0x00012345

Data Mapping
Address              Word 
0x10000010         0x00000000
0x10000008         0x00001212
0x10000004         0x00012345
0x10000000         0x00012345

