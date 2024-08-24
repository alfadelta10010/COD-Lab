.data                                     # directive , below which my data is present
n: .word 0x12345678, 0x12121212           # n is the reference for the base address , 32-bit number (.word)
.text                                     # directive , below this is the code to be executed
la x10,n                                  # load address (sudo instruction) base address of variable n into x10
lw x11,0(x10)                              # load word,x11 is the destination with offset 0
lw x12,4(x10)                            
add x13,x11,x12                              # adding word in x11 and x12 and storing the result in the register x13
sw x13,8(x10)