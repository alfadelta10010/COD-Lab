#Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

.data
a: .word 0x00000012, 0x000035AC   
b: .half 0x0150, 0x130A           
c: .byte 0x76, 0x5A               

.text
la x10, a
lw x12, 0(x10)
lw x13, 4(x10)
add x14, x13, x12
sw x14, 8(x10)      

    
la x10, b
lh x12, 0(x10)
lh x13, 2(x10)
add x14, x13, x12
sh x14, 12(x10)    
    
la x10, c
lb x12, 0(x10)
lb x13, 1(x10)
add x14, x13, x12
sb x14, 14(x10)    

   
la x10, b
lhu x12, 0(x10)
lhu x13, 2(x10)
add x14, x13, x12
sh x14, 16(x10)     

   
la x10, c
lbu x12, 0(x10)
lbu x13, 1(x10)
add x14, x13, x12
sb x14, 18(x10)     

