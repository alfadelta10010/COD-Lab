.data                                     
a: .byte 1,2                     #a is the reference for the base address , 8 bit number                   
.text                        
la x10,a                         #load address to base address of variable a into x10
lb x8,0(x10)                     #load byte,x8 is the destination with offset 0
lb x9,1(x10)                     #load byte,x9 is the destination with offset 1
add x11,x8,x9                    #adding byte in x8 and x9 and storing in reg x10
sb x11,2(x10)                    #storing byte in reg x10