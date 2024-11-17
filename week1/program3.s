##Program 2:Write an Assembly Program for addition of 2 64-bit numbers on RV32I

.data
n1: .word 0x12345678, 0x9ABCDEF0  
n2: .word 0x11111111, 0x22222222  
result: .word 0, 0                  

.text
la x10, n1
la x11, n2
la x12, result
lw x18, 0(x10)
lw x19, 0(x11)
add x20, x18, x19
sw x20, 0(x12)
lw x18, 4(x10)
lw x19, 4(x11)
sltu x21, x20, x19  
add x20, x18, x19
add x20, x20, x21
sw x20, 4(x12)
li x10, 0
li x11, 93 

