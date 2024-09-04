# PROGRAM 1
.data
a: .half 0x1234, 0x5678, 0x0910, 0x1213, 0x1415, 0x1617, 0x1819, 0x2021, 0x2223, 0x2425, 0x2627

.text
la x10,a
addi x18,x0,0 # i
addi x19,x0,0 # h
addi x25,x0,10
back:
    lh x20,0(x10)
    add x19,x19,x20
    addi x10,x10,2
    addi x18,x18,1
    blt x18,x25,back
la x10,a    # To get x10 value back to base address of array a
sw x19,18(x10)


# PROGRAM 2
.data
a: .word 0x80001234 , 0x90000123 , 0x90001234 , 0xFFFFFFFF

.text
la x2, a
lw x18,4(x2)
lw x19,12(x2)
add x20,x18,x19  # Adding LSB of both numbers
sltu x21,x20,x18
lw x22,0(x2)
lw x23,8(x2)
add x24,x22,x23  # Adding LSB of both numbers
sltu x25,x24,x22 # Checks for overflow
add x26,x24,x21  # Adds carry of LSB to MSB result
sw x26,24(x2)    # MSB of result
sw x20,20(x2)    # LSB of result
