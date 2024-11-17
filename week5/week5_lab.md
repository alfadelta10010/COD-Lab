Week 5:
i) Write an assembly program to check whether a given number in an array of elements is divisible
by 9
 .data
array: .word 9, 18, 20, 27
result: .word -1
 .text
 .globl _start
_start:
 la t0, array
 li t1, 0
check_loop:
 lw t2, 0(t0)
 remu t3, t2, 9
 beqz t3, divisible
 addi t0, t0, 4
 addi t1, t1, 1
 bne t1, 4, check_loop
 j not_divisible
divisible:
 sw t1, result
 j end
not_divisible:
 li t1, -1
 sw t1, result
end:
 li a7, 10
 ecall
ii)
Write an Assembly Program for the following C code: main() { unsigned short int a[11] = {0x1234,
0x5678, ...}; unsigned short int b[11] = {0x1234, 0x5678, ...}; unsigned short int c[11] = {0x1234,
0x5678, ...}; for(i = 0; i < 10; i++) { c[i] = a[i] * b[i] + c[i-1]; } }
 .data
a: .hword 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888,
0x9999
b: .hword 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888,
0x9999
c: .hword 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888,
0x9999
 .text
 .globl _start
_start:
 li t0, 0
 la t1, a
 la t2, b
 la t3, c
loop:
 lh t4, 0(t1)
 lh t5, 0(t2)
 lh t6, -2(t3)
 mul t7, t4, t5
 add t7, t7, t6
 sh t7, 0(t3)
 addi t1, t1, 2
 addi t2, t2, 2
 addi t3, t3, 2
 addi t0, t0, 1
 bne t0, 10, loop
 li a7, 10
 ecall
