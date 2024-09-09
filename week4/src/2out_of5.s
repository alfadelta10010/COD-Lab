
.data 
a: .byte 0x1f, 0xe0, 0x3f

.text
la x10, a
lbu x11, 0(x10)
lbu x12, 1(x10)
lbu x13, 2(x10)
addi x19, x0, 5 # counter

ch1: # check 1
    and x20, x11, x12 # check the most significant 3 bits
    andi x14, x11, 0x1f # extract the least significant 5 bits
    beqz x20, ch2 # second check

inc:
    addi x21, x21, 0x01 

ch2: # check 2
    addi x19, x19, -1 # counter decrement
    andi x15, x14, 0x01 # lsb
    srli x14, x14, 1
    bgtz x15, inc 
    bgez x19, ch2


exit: