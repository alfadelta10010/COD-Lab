#5Stage Pipeline without Forwading or Hazard detection
.data 
x: .word 0x012345678
.text
auipc x10,0x10000
nop
nop
addi x10 x10 0
nop
nop
lb x5,0(x10)
nop
nop
addi x7,x5,0x56
nop
nop
add x9,x5,x7