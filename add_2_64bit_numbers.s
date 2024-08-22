# add two double words using RVV32I

.data
a: .word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF    #data i can declare as double word also , data can be declared as any type

.text
la x9,a
lw x5,0(x9)
lw x6,4(x9)
lw x28,8(x9)
lw x29,12(x9)

add x7,x6,x5
sltu x31,x7,x6


add x11,x28,x29
add x12,x31,x11
sltu x30,x12,x28