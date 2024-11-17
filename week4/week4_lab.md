Week4:
i)Write an assembly program to find whether a given string is a palindrome or
not, using stack operations
 .data
str: .ascii "radar\0"
result: .word 0
 .text
 .globl _start
_start:
 la t0, str
 li t1, 0
loop_count:
 lb t2, 0(t0)
 beqz t2, reverse_stack
 addi t0, t0, 1
 addi t1, t1, 1
 j loop_count
reverse_stack:
 la t0, str
 add t3, x0, t1
push_stack:
 addi t3, t3, -1
 lb t2, 0(t0)
 addi t0, t0, 1
 sw t2, 0(sp)
 addi sp, sp, -4
 bnez t3, push_stack
compare:
 addi sp, sp, 4
 lw t4, 0(sp)
 lb t5, 0(t0)
 bne t4, t5, not_palindrome
 addi t0, t0, 1
 addi t1, t1, -1
 bnez t1, compare
palindrome:
 li t6, 1
 sw t6, result
 j end
not_palindrome:
 li t6, 0
 sw t6, result
end:
 li a7, 10
 ecall
ii)
Write an assembly program to search a given number in an array
 .data
array: .word 1, 2, 3, 4, 5
target: .word 3
result: .word -1
 .text
 .globl _start
_start:
 la t0, array
 li t1, 0
 lw t2, target
search_loop:
 lw t3, 0(t0)
 beq t2, t3, found
 addi t0, t0, 4
 addi t1, t1, 1
 bne t1, 5, search_loop
 j not_found
found:
 sw t1, result
 j end
not_found:
 li t1, -1
 sw t1, result
end:
 li a7, 10
 ecall
