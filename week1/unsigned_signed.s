.data
a: .half -3    # creating a variable of type halfword
b: .byte 0x02       # creating a variable of byte type


.text
la x7,a            # loading base address of a in x7
la x6,b            # loading base address of b in x6
lhu x8,0(x7)        # loading -3 as an unsignedd number: it gets stored as 0x0000fffd
lbu x9,0(x6)        # loading 2 as aan unsigned number: it gets stored as 0x00000002
lh x10,0(x7)        # loading -3 as a singned number: it gets stored as 0xfffffffd
lb x11,0(x6)        # loading 2 as a signed number:  it gets stored as 0x00000002