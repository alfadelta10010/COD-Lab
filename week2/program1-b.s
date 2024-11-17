.data
array:.half 1,2,3,4,5
N:.word 5
result:.word 0

.text
la x10,array
lw x11,N
addi x12,x12,0
addi x13,x13,0
loop2:
lh x14,0(x10)
add x13,x13,x14
addi x10,x10,2
addi x12,x12,1
bne x12,x11,loop2
la x15,result
sw x13,0(x15)
