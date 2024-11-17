.data 
a: .byte 0x0a, 0x0b, 0x1f, 0x05, 0x50

.text
la x10, a
lbu x11, 0(x10)
lbu x12, 1(x10)
lbu x13, 2(x10)
addi x20, x0, 5 # counter for the loop

two:
    and x14, x11, x13 # checking the msb
    andi x15, x11, 0x1f # extracting the lsb
    beqz x14, five # for checking condition 2
    

five:
    addi x20, x20, -1 # counter decrementer
    andi x16, x15, 0x01 # checking if the last bit is a 1
    srli x15, x15, 1
    bgtz x16, count
    bgez x20, five
    
count:
    addi x19, x19, 1
    
exit: