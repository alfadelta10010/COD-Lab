#WAP Write an Assembly Program for the following C code:
#main() { unsigned short int a[11] = {0x1234, 0x5678, ...}; unsigned short int b[11] = {0x1234, 0x5678, ...}; unsigned short int c[11] = {0x1234, 0x5678, ...}; for(i = 0; i < 10; i++) { c[i] = a[i] * b[i] + c[i-1]; } } ```


.data
a: .byte 0x11, 0x22, 0x33, 0x44, 0x11
b: .byte 0x11, 0x22, 0x33, 0x44, 0x11
c: .byte 0x11, 0x22, 0x33, 0x44, 0x11
.text
la x10, a 
la x11, b 
la x12, c 
addi x15, x10, 10
loop:
    lb x20, 0(x10)
    lb x21, 0(x11)
    lb x22, -1(x12)
    mul x23, x20, x12
    add x24, x23, x22
    sw x22, 0(x22)
    addi x10, x10, 1
    addi x11, x11, 1
    bne x10, x15, loop