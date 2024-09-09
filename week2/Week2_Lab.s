#Program 1

.data
a: .half 0x1234,0x5678,0x1ABC,0xDEF2,0x1111,0x2134,0x4151,0x6171,0x8191,0xA1B1,0xC1D1 #array of 11 elements

.text
la x10,a
addi x11,x0,0 # x11 mapped to h
add x12,x0,x0 # i
addi x14,x0,11 #give the maximum count value
next:
lhu x13,0(x10) #load the first element into x13
add x11,x11,x13 #add the first index value with h
addi x12,x12,1 #increment the i
addi x10,x10,2 #increase the base address by 2 because its a half word
bne x12,x14,next
sh x11,0(x10)


#Program 2

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
