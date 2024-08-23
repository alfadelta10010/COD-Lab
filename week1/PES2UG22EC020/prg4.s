#half and 
#byte
.data 
a: .half -5,1           # Initialize two half-words (-5, 1)
n: .byte -3, 4   # Initialize two bytes (-3,4 )
w: .word 0x7FFFFcFc, 1  # Initialize two words (0x7FFFFcFc, 1)
.text
la x10,a                # Load address of 'a' into x10
la x11,n                # Load address of 'n' into x11
lh x12,0(x10)           # Load signed half-word from 'a' into x12
lh x13,2(x10)           # Load signed half-word from 'a+2' into x13
add x14,x12,x13         # Add x12 and x13, store in x14
lhu x15,0(x10)          # Load unsigned half-word from 'a' into x15
lhu x16,2(x10)          # Load unsigned half-word from 'a+2' into x16
add x17,x15,x16         # Add x15 and x16, store in x17
lb x18,0(x11)           # Load signed byte from 'n' into x18
lb x19,1(x11)           # Load signed byte from 'n+1' into x19
add x20,x18,x19         # Add x18 and x19, store in x20
lbu x21,0(x11)          # Load unsigned byte from 'n' into x21
lbu x22,1(x11)          # Load unsigned byte from 'n+1' into x22
add x23,x21,x22         # Add x21 and x22, store in x23
sh x14,4(x10)           # Store x14 as half-word at 'a+4'
sh x17,6(x10)           # Store x17 as half-word at 'a+6'
sb x20,2(x11)           # Store x20 as byte at 'n+2'
sb x23,3(x11)           # Store x23 as byte at 'n+3'

# Word operations
la x24,w
lw x25, 0(x24)          # Load signed word from 'w' into x25
lw x26, 4(x24)          # Load signed word from 'w+4' into x26
add x27, x25, x26       # Add x25 and x26, store in x27

 