# Write an Assembly Program for the following C code:
# main() { unsigned short int a[11] = {0x1234, 0x5678, ...}; \ 
# unsigned short int b[11] = {0x1234, 0x5678, ...}; \ 
# unsigned short int c[11] = {0x1234, 0x5678, ...}; 
# for(i = 0; i < 10; i++) { c[i] = a[i] * b[i] + c[i-1];}}

.data
a: .half 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
b: .half 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
c: .half 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
.text

la x10, a
la x11, b
la x12, c

addi x13, x0, 10

loop:
    lh x5, 2(x10) # start indexing from first element of a & b to avoid -ve index of c
    lh x6, 2(x11)
    lh x7, 0(x12)
    
    mul x8, x5, x6
    add x8, x8, x7
    
    sh x8, 2(x12)
    
    addi x10, x10, 2
    addi x11, x11, 2
    addi x12, x12, 2
    
    addi x13, x13, -1
    
    blt x0, x13, loop