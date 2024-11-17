# Write an assembly program to find whether a given string
# is a palindrome or not, using stack operations
# write 1 to x20 if palindrome

.data
a: .byte 114, 97, 100, 100, 97, 114 # ascii encoded string
b: .byte 6 # length of the string
.text

la x10, a
la x11, b

lb x12, 0(x11)
andi x13, x12, 1 # check if length is even or odd
srli x12, x12, 1 # divide by two to get mid point

addi x14, x0, 1 # for comparison

push: # push elements of the first half of the array into the stack
    lb x5, 0(x10)
    sb x5, 0(sp)
    addi sp, sp, -1
    addi x10, x10, 1
    addi x7, x7, 1
    blt x7, x12, push
    
bne x13, x14, pop
addi x10, x10, 1 # skip middle element if length is odd
    
pop: # pop elements from stack and compare to elements of array
    lb x5, 0(x10)
    addi sp, sp, 1
    lb x6, 0(sp)
    addi x10, x10, 1
    addi x8, x8, 1
    bne x5, x6, false
    blt x8, x12, pop
    
true:
    addi x20, x0, 1
    j exit
    
false:
    addi x20, x0, 0
    
exit: nop