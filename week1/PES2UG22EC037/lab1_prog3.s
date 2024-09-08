.data                                     # directive , below which my data is present
n: .byte 0x12, 0x27                       # n is the reference for the base address , 8-bit  number (.byte)
.text                                     # directive , below this is the code to be executed
la x10,n                                   # load address (sudo instruction) base address of variable n into x10
lb x5,0(x10)                              # load byte,x5 is the destination with offset 0
lb x6,1(x10)                            
add x7,x5,x6                              # adding byte in x5 and x6 and storing the result in the register x7
sb x7,2(x10)                              # store byte, storing the result x7 in the register 2 offset from base address