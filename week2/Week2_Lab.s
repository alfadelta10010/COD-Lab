# PROGRAM 1
.data 
a: .half 0x1234, 0x5678, 0x0910, 0x1213, 0x1415, 0x1617, 0x1819, 0x2021, 0x2223, 0x2425, 0x2627

.text 
la x2, a
lh x5,0(x2)
lh x6,2(x2)
lh x7,4(x2)
lh x8,6(x2)
lh x9,8(x2)
lh x10,10(x2)
lh x11,12(x2)
lh x12,14(x2)
lh x13,16(x2)
lh x14,18(x2)
lh x15,20(x2)
add x18,x0,x5
add x18,x18,x6
add x18,x18,x7
add x18,x18,x8
add x18,x18,x9
add x18,x18,x10
add x18,x18,x11
add x18,x18,x12
add x18,x18,x13
add x18,x18,x14
sh x18,18(x2)


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
