# PROGRAM 1
.data
a: .word 0x80001234 , 0x90000123

.text
la x2, a
lw x18, 0(x2)
lw x19, 4(x2)
add x20,x18,x19
sw x20,8(x2)


# PROGRAM 2
.data
a: .half 0x61A8 , 0x350

.text
la x2, a
lh x18, 0(x2)
lh x19, 2(x2)
add x20,x18,x19
sh x20,6(x2)


# PROGRAM 3
.data
a: .byte 0x06 , 0x02

.text
la x2, a
lb x18, 0(x2)
lb x19, 1(x2)
add x20,x18,x19
sb x20,2(x2)


# PROGRAM 4
# HALF WORD SIGNED & UNSIGNED ADDITION
.data
a: .half 0x8000 , 0x0001

.text
la x2, a
lh x18,0(x2)
lh x19,2(x2)
add x20,x18,x19
sh x20,4(x2)
lhu x21,0(x2)
lhu x22,2(x2)
add x23,x21,x22
sh x23,6(x2)

# BYTE SIGNED & UNSIGNED ADDITION
.data
a: .byte 0x87 , 0x3F

.text
la x2, a
lb x24,0(x2)
lb x25,1(x2)
add x26,x24,x25
sb x26,2(x2)
lbu x27,0(x2)
lbu x28,1(x2)
add x29,x27,x28
sb x29,3(x2)