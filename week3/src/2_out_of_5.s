.data
a: .byte 0x18 # 8 bit number

.text
la x10,a        #storing the address of a
lb x8,0(x10)
addi x28,x0,5        #counter
addi x30,x0,2     
andi x9,x8,0XE0      #getting the first 3 msb bits
bne x9,x0,exit    #checking if the msb is 0
loop:
andi x12,x8,0x01      #getting the lsb
beq x12,x0,next       #comparing the lsb with 0
addi x14,x14,1     #if not zero x14 is incremented every time
next:
srli x8,x8,1       #shifting the 8 bit number by 1 bit
addi x28,x28,-1    #decrementing the counter
bne x28,x0,loop    #if counter not zero then iterate
bne x14,x30,exit
#sb x14,2(x10)
exit:
addi x13,x0,0