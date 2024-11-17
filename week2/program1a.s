.data
array:.word 1,2,3,4,5
N:.word 5
result:.word 0

.text
la x10,array
lw x11,N
addi x12,x12,0
addi x13,x13,0
loop1:
lw x14,0(x10)
add x13,x13,x14
addi x10,x10,4
addi x12,x12,1
bne x12,x11,loop1
la x15,result
sw x13,0(x15)