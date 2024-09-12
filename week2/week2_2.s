.data
n1: .word 0x12345678, 0x9ABCDEF0  
n2: .word 0x11111111, 0x22222222  
result: .word 0, 0                  

.text
la x10, n1
la x11, n2
la x12, result
lw x13, 0(x10) 
lw x14, 0(x11) 
add x15, x13, x14  #adding lower
sw x15, 0(x12)
lw x13, 4(x10)
lw x14, 4(x11)
sltu x16, x15, x14 #carry from lower 
add x15, x13, x14  #adding upper
add x15, x15, x16  #adding carry to upper
sw x15, 4(x12)
li x10, 0
li x11, 93         #exit