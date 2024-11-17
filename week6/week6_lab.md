Week6:
i)Write an assembly program to sort an array using bubble sort to sort Nelements
.data
a: .byte 15,31,11,9,36,05
.text
#lbu x11,0(x10)
addi x12,x0,6 #No of elements
addi x13,x0,0 #i
addi x14,x0,0 #j
back1:
 la x10,a #loading address here because after every cycle, the address
 la x11,a #will be changed, and needs to be restored back

 addi x14,x14,1 #j+1, because there isnt any element after 6th to compare
 back2:
 lbu x15,0(x10) #load the first element (technically will be incremented)
 #(after each cycle)
 addi x11,x11,1 #need the 2nd element, so +1
 lbu x16,0(x11) #get it
 bltu x15,x16,go #if first element greater, then it goes inside the loop
 sb x15,0(x11) #stores the first element in 0x10000001 position and viceversa
 sb x16,0(x10) # VV
 go:
 addi x14,x14,1 #now increment j
 addi x10,x10,1 #increment the address by 1
 bne x14,x12,back2 #compares j with x12, i.e the n
 addi x13,x13,1 #after j becomes equal, increment i
 addi x14,x0,0 #reset the j value
bne x13,x12,back1 #compare i with n
ecall #end of program
ii)Write an assembly program to calculate the factorial of a number with &
without recursion
- without recursion:
 .data
n: .word 5
result: .word 1
 .text
 .globl _start
_start:
 lw t0, n
 li t1, 1
factorial_loop:
 mul t1, t1, t0
 addi t0, t0, -1
 bnez t0, factorial_loop
 la t2, result
 sw t1, 0(t2)
 li a7, 10
 ecall
- with recursion
 .data
n: .word 5
result: .word 1
 .text
 .globl _start
_start:
 lw t0, n
 jal ra, factorial
 la t1, result
 sw t0, 0(t1)
 li a7, 10
 ecall
factorial:
 addi sp, sp, -4
 sw ra, 0(sp)
 li t1, 1
 beq t0, t1, base_case
 addi t0, t0, -1
 jal ra, factorial
 addi t0, t0, 1
 mul t0, t0, t1
base_case:
 lw ra, 0(sp)
 addi sp, sp, 4
 jr ra
iii) Write an assembly program to do matrix multiplication
 .data
n: .word 3
A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
B: .word 9, 8, 7, 6, 5, 4, 3, 2, 1
C: .space 36
 .text
 .globl _start
_start:
 la t0, n
 lw t1, 0(t0)
 la t2, A
 la t3, B
 la t4, C
 li t5, 0
row_loop:
 li t6, 0
col_loop:
 li t7, 0
 li t8, 0
mul_loop:
 mul t9, t8, t1
 add t9, t9, t6
 slli t9, t9, 2
 lw t10, 0(t2)
 lw t11, 0(t3)
 mul t12, t10, t11
 add t7, t7, t12
 addi t2, t2, 4
 addi t3, t3, 4
 addi t8, t8, 1
 blt t8, t1, mul_loop
 slli t13, t5, 2
 add t13, t13, t6
 slli t13, t13, 2
 sw t7, 0(t4)
 addi t4, t4, 4
 addi t6, t6, 1
 blt t6, t1, col_loop
 addi t5, t5, 1
 bne t5, t1, row_loop
 li a7, 10
 ec
