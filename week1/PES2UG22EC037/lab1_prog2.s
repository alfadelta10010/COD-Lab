.data                                     # directive , below which my data is present
n: .half 0x1234, 0x4321                   # n is the reference for the base address , 16-bit number (.half)
.text                                     # directive , below this is the code to be executed
la x10,n                                  # load address (sudo instruction) base address of variable n into x10
lh x5,0(x10)                              # load half,x5 is the destination with offset 0
lh x6,2(x10)                            
add x7,x5,x6                              # adding half in x5 and x6 and storing the result in the register x7
sh x7,4(x10)                              # store half, storing the result x7 in the register 4 offset from base address