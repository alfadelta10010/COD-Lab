.data # array equation
a: .byte 0x1234, 0x5678, 0x9abc, 0xdef0
b: .byte 0x1234, 0x5678, 0x9abc, 0xdef0
c: .byte 0x00

.text
la x10, a # starting index
la x11, b # starting index
la x12, c # starting index
addi x15, x10, 10 # ending index
sh x0, -2(x12) # Initialisation of c[-1]

loop:
    lhu x20, 0(x10)
    lhu x21, 0(x11)
    lhu x22, -2(x12)
    
    mul x23, x20, x21
    add x24, x23, x22
    sb x24, 0(x12)
    
    addi x10, x10, 1
    addi x11, x11, 1
    bne x10, x15, loop
