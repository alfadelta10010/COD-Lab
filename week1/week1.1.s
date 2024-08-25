.data                                     # directive , below which my data is present
n:.word 0x12345678,0x12121212             #n is the reference for the base address , 32-bit number (.word)
.text                                     # directive , below this is the code to be executed
la x10,n                                  #load address (sudo instruction) base address of variable n into x10
lw x5,0(x10)                              #load word,x5 is the destination with offset 0
lw x6,4(x10)                              # loading the second word to x6 with offset 4 
add x7,x5,x6                              # adding word in x5 and x6 and storing the result in the register x7
sw x7,8(x10)
