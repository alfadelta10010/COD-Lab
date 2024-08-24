.data                                  
n: .word 0x12345678, 0x12121212        #n is the reference for the base address ,word - 4bytes
.text                                     
la x10,n                               #load address base address of variable n into x10
lw x5,0(x10)                           #load word,x5 is the destination with offset 0
lw x6,4(x10)                            
add x7,x5,x6                           #adding word in x5 and x6 and stroing it in x7
sw x7,8(x10)