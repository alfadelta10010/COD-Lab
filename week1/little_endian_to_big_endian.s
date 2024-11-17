.data
a: .word 0x12345678
.text
la,x10,a
lw x11,0(x10)    #loading the word to register x11
addi x20,x0,0    #creating counter
addi x21,x0,4    #number of times it needs to be updated
addi x22,x0,24    #reverse counter
loop:
    andi x12,x11,0xff    #masking
    srli x11,x11,8    #getting msb to lsb
    sll x13,x12,x22    #shifting lsb to msb
    addi x22,x22,-8    #reverse_counting
    add x14,x14,x13    #adding value to register
    addi x20,x20,1    #updating counter
    bltu x20,x21,loop    
    sw x14,4(x10)    #storing in register