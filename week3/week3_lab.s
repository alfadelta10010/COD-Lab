.data
a:   .word 0x12345678

.text
la x10, a  #loads the base address
lw x11, 0(x10) #assigns the value to x11
addi x3,x0,3 #initiates a counter of 3
back:
    andi x12,x11,0xff # masking the value stored in x11
    add x14,x14,x12   #add the extracted value and original number
    slli x14,x14,8    #shift the value in x14 by 8 bits
    srli x11,x11,8    #shift the value in x11 by 8 bits
    addi x3,x3,-1     #Decrements the loop counter by 1
bnez x3,back          #checks if x3 is zero, runs till it becomes zero
andi x15,x11,0xff     #extracts the least significant byte
add x15,x14,x15       #gives the final result
