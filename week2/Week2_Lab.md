#program 
Write an Assembly Program for the following C code: 
main() {
        unsigned short int a[11] = {0x1234, 0x5678, ...}, h; 
        h = 0; 
        for(i = 0; i < 10; i++) 
        { 
              h = h + a[i]; 
        } 
        a[10] = h; 
} 

## Name of file:
    week2(i).s

#observations 
The la instruction loads the address of the array a into register x10. 
The sum variable h is initialized to 0 by loading the immediate value 0 into register t0.
The address for each element is calculated by adding the offset (0, 2, 4, ..., 18) to the base address in x10.
Finally, the sum variable h stored in t0 is stored in the 11th element of the array a using the sh instruction

#register mapping 
x6=0x00000000 
x5=0x000068ac 
x10=0x10000000 
x3=0x10000000 
x2=0x7ffffff0

#Data mapping 
0x10000000 - 0x000068ac 
0x10000010 - 0x00000000 
0x1000000c - 0x00000000 
0x10000008 - 0x00000000
0x10000004 - 0x00000000 
0x10000000 - 0x56781234

statement: 
Write an Assembly Program for addition of 2 64-bit numbers on RV32I

Name of file:
Week2(ii).s 

observation-The code starts with defining a data section.
data and an array a of four 32-bit words (4 bytes each), each initialized with the hexadecimal value 0xFFFFFFFF. 
The text section .text begins, and the la instruction loads the address of the array a into register x10. 
The lw (load word) instructions load the four 32-bit words from the array a into registers x9, x8, x7, and x6 respectively. 
The offsets 0, 4, 8, and 12 are used to access each word in the array. 
add x5,x8,x6 adds the least significant 32 bits (from x8 and x6) and stores the result in x5. 
sltu x11,x5,x8 sets x11 to 1 if there is a carry from the least significant addition (i.e., x5 < x8), indicating a carry to the most significant bits. 
sw x5,16(x10) stores the least significant 32 bits of the result in the 5th word of the array (offset 16).

#Register mapping 
x3=0xffffffff 
x10=0x10000000 
x11=0x10000000 
x12=0x00000001 
x2=0xfffffffe 
x5=0xfffffffe 
x6=0xffffffff 

#Data mapping 
0x10000018 - 0x10000018 
0x10000014 - 0xffffffff 
0x10000010 - 0xfffffffe 
0x1000000c - 0xffffffff 
0x10000008 - 0xffffffff 
0x10000004 - 0xffffffff 
0x10000000 - 0xffffffff

