# write a program using RV32I single cycle RISCV processor, perform addition of two 64-bit
# unsigned numbers and store the result in memory

.data
a: .dword 0xFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0
.text

la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
lw x13, 8(x10)
lw x14, 12(x10)

add x15, x12, x14 # add 16 LSB
sltu x5, x15, x12 # check if carry generated in addition of 16 LSB

add x6, x11, x13 # add 16 MSB
sltu x17, x6, x11 # check if carry generated in addition of 16 MSB

add x16, x6, x5 # add LSB carry to MSB addition resultant
sltu x7, x16, x5 # check if adding carry caused carry to be generated
or x17, x17, x7 # final carry value

sw x15, 16(x10)
sw x16, 20(x10)
sw x17, 24(x10)