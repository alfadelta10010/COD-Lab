# little endian to big endian
.data
a: .word 0x12345678
.text

la x10, a
lw x11, 0(x10)
addi x5, x11, 0 

# masking to extract the bytes
andi x6, x5, 0xFF
srli x5, x5, 8
andi x7, x5, 0xFF
srli x5, x5, 8
andi x8, x5, 0xFF
srli x5, x5, 8
andi x9, x5, 0xFF

# store in big endian format
sb x9, 4(x10)
sb x8, 5(x10)
sb x7, 6(x10)
sb x6, 7(x10)
