.data
a: .word 0x12345678    # Stores a 32-bit word
b: .half 0x0707 0x0303 # Stores two 16-bit half-words
c: .byte 0x44 0x12    # Stores two 8-bit bytes

.text
la x10,a   # Load address of 'a' into register x10
la x11,b   # Load address of 'b' into register x11
la x12,c   # Load address of 'c' into register x12

lw x2,0(x10)    # Load 32-bit word from address in x10 into x2
lh x3,0(x11)    # Load 16-bit signed half-word from address in x11 into x3
lhu x4,2(x11)   # Load 16-bit unsigned half-word from address in x11+2 into x4
lb x5,0(x12)    # Load 8-bit signed byte from address in x12 into x5
lbu x6,1(x12)   # Load 8-bit unsigned byte from address in x12+1 into x6

sw x2,4(x10)    # Store 32-bit word from x2 into address x10+4
sh x3,4(x11)    # Store 16-bit signed half-word from x3 into address x11+4
sh x4,6(x11)    # Store 16-bit unsigned half-word from x4 into address x11+6
sb x5,1(x12)    # Store 8-bit signed byte from x5 into address x12+1
sb x6,2(x12)    # Store 8-bit unsigned byte from x6 into address x12+2
