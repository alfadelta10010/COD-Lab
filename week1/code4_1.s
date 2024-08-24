# iv.Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
.data
a: .word 15,-15
b: .half 9,-9
c: .byte 3,-3
.text
la x28,a
la x29,b
la x30,c

lw x18,0(x28)
lw x19,4(x28) 

lhu x20,0(x29) 
lh x21,2(x29)  

lbu x22,0(x30)  
lb x23,1(x30)  
