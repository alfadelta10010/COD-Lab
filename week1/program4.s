.data
a: .half -1    # creating a variable of type halfword
b: .byte 0x05        # creating a variable of byte type


.text
la x10,a            # loading base address of a in x5
la x11,b            # loading base address of b in x6
lhu x12,0(x10)        # loading -1 as an unsignedd number: it gets stored as 0x0000ffff
lbu x13,0(x11)        # loading 5 as aan unsigned number: it gets stored as 0x00000005
lh x14,0(x10)        # loading -1 as a singned number: it gets stored as 0xffffffff
lb x15,0(x11)        # loading 5 as a signed number:  it gets stored as 0x00000005