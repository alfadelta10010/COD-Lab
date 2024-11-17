.data
n: .word 0x000000009, 0x00009999 
.text
la x5, n 
lw x6, 0(x5) 
addi x7, x0, 0x0F 
addi x28, x0, 0 
addi x29, x0, 8 
loop:
and x18, x7, x6 
add x28, x28, x18 
srli x6, x6, 4 
addi x29, x29, -1 
bne x29, x0, loop
new:
addi x30, x0, 9 
check_divisibility:
blt x28, x30, done 
sub x28, x28, x30 
j check_divisibility 
done:
beq x28, x0, divisible
not_divisible:
li x31, 0
j end
divisible:
li x31, 1 
end:
nop