.data 
a: .byte 0x14,0xE5
b: .byte 0,0
.text
la x10,a
la x9,b
back:
lbu x11,0(x10)
jal x1,twooutfive
sb x20,0(x9)
addi x10,x10,1
addi x9,x9,1
addi x8,x8,-1
bne x8,x0,back
#same j same
#back:
    #lbu a0,0(x20)
    #jal x1,twooutfive
    #sb a1,0(x21)
    #addi x20,x20,1
    #addi x21,x21,1
    #addi x22,x22,-1
    #bne x22,x0,back

same:jal x0,same

#for ripes tool dont use jalr x0,0(x1)
#for ripes use jalrx0,x1,0


twooutfive:
andi x6,x5,0xE0
bne x6,x0,exit
#part 2 of code 
addi x13,x0,5

back1:
andi x6,x5,0x01
beq x6,x0,next
addi x25,x25,01

next:
    srli x5,x5,1
    addi x13,x13,-1
    bne x13,x0,back1
    addi x26,x0,2
    bne x25,x26,exit
    addi x20,x0,0x01
    beq x0,x0,exit2
exit:
addi x20,x0,2

exit2:nop
