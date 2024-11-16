# PROGRAM 1a
.data
a: .word 0x80001234 , 0x90000123

.text
la x2, a
lw x18, 0(x2)
lw x19, 4(x2)
add x20,x18,x19
sw x20,8(x2)

# PROGRAM 1b
.data
a: .half 0x61A8 , 0x350

.text
la x2, a
lh x18, 0(x2)
lh x19, 2(x2)
add x20,x18,x19
sh x20,6(x2)

# PROGRAM 1c
.data
a: .byte 0x06 , 0x02

.text
la x2, a
lb x18, 0(x2)
lb x19, 1(x2)
add x20,x18,x19
sb x20,2(x2)



# PROGRAM 2
.text
addi x6, x0, 10    
addi x7, x0, 5    
addi x8, x0, 20   
addi x9, x0, 3     
addi x10, x0, 15  
addi x11, x0, 8  
add x12, x6, x7
sub x13, x8, x9
sub x14, x12, x13  
add x15, x10, x11
add x16, x14, x15 
sub x17, x16, x9   

