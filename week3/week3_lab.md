Week 3:
i)Write an assembly program to check if a number is a 2 out of 5 number
.data
a: .byte 0x01
.text
la x10,a
lbu x11,0(x10)
addi x20,x0,2
addi x28,x0,1 #checking if the bit is 1
addi x30,x0,5
srli x13,x11,5 #shifting right by 5, to determine if MSB is 0
bne x13,x0,exit #branching if they are not zero
 back:
 andi x13,x11,1 #and with LSB
 bne x13,x28,new #if its 0, branch, if 1, increment the count of 1
 addi x16,x16,1


 new:
 srli x11,x11,1 #shift it by 1
 addi x30,x30,-1 #decrement the count
 bne x30,x0,back #go back if count is not 0
exit:
 addi x29,x0,0 #add Y = 0, if its not 2 out of 5 code
 bne x16,x20,bye #check condition
 addi x29,x0,1 #Y = 1, if 2 out of 5 code
 bye:
ecall
ii) Write an assembly program to encode a number using Hamming code.
 .data
input: .word 0b1101 # Input: 4-bit number
output: .space 4 # Space for 7-bit encoded result
 .text
 .globl _start
_start:
 # Load input
 la t0, input # Load address of input
 lw t1, 0(t0) # Load 4-bit input into t1
 # Extract data bits d0, d1, d2, d3
 andi t2, t1, 0x1 # d0: t2 = t1 & 0b0001
 srli t3, t1, 1
 andi t3, t3, 0x1 # d1: t3 = (t1 >> 1) & 0b0001
 srli t4, t1, 2
 andi t4, t4, 0x1 # d2: t4 = (t1 >> 2) & 0b0001
 srli t5, t1, 3
 andi t5, t5, 0x1 # d3: t5 = (t1 >> 3) & 0b0001
 # Compute parity bits
 xor t6, t2, t3
 xor t6, t6, t5
 xor t7, t2, t4
 xor t7, t7, t5
 xor t8, t3, t4
 xor t8, t8, t5
 # Arrange bits into 7-bit output: p1, p2, d0, p4, d1, d2, d3
 slli t9, t6, 6
 slli t10, t7, 5
 slli t11, t2, 4
 slli t12, t8, 3
 slli t13, t3, 2
 slli t14, t4, 1
 or t15, t9, t10
 or t15, t15, t11
 or t15, t15, t12
 or t15, t15, t13
 or t15, t15, t14
 or t15, t15, t5
 # Store output
 la t0, output # Load address of output
 sw t15, 0(t0) # Store result in output
 # Exit program
 li a7, 10 #
  ecall
