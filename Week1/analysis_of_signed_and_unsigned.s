.data
a: .half -1    # creating a variable of type halfword
b: .byte 0x05        # creating a variable of byte type


.text
la x5,a            # loading base address of a in x5
la x6,b            # loading base address of b in x6
lhu x7,0(x5)        # loading -1 as an unsigned number of type halfword: it gets stored as 0x0000ffff
lbu x8,0(x6)        # loading 5 as an unsigned number of type byte: it gets stored as 0x00000005
lh x9,0(x5)        # loading -1 as a singned number of type halfword: it gets stored as 0xffffffff
lb x10,0(x6)        # oading 5 as a signed number of type byte:  it gets stored as 0x00000005