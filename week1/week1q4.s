#signed byte
.data
a: .byte 0xFF
.text
la x10, a #loading base address
lb x11, 0(x10) #loading value into register
sb x11, 1(x10) #storing in memory

#unsigned byte
.data
a: .byte 0xFF
.text
la x10, a #loading base address
lbu x11, 0(x10) #loading value into register
sb x11, 1(x10) #storing in memory

#signed half word
.data
a: .half 0xFFFF
.text
la x10, a #loading base address
lh x11, 0(x10) #loading value into register
sh x11, 1(x10) #storing in memory

#unsigned half word
.data
a: .half 0xFFFF
.text
la x10, a #loading base address
lhu x11, 0(x10) #loading value into register
sh x11, 1(x10) #storing in memory

#signed word
.data
a: .word 0xFFFFFFFF
.text
la x10, a #loading base address
lw x11, 0(x10) #loading value into register
sw x11, 1(x10) #storing in memory

#unsigned word
.data
a: .word 0xFFFFFFFF
.text
la x10, a #loading base address
lwu x11, 0(x10) #loading value into register
sw x11, 1(x10) #storing in memory
