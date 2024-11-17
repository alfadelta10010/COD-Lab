.data 
x: .word 0x012345678
.text
auipc x10,0x10000
nop    #Manual Hazard control
nop
addi x10 x10 0    #Rest Dependencies are resolved by the forwarding unit
lb x5,0(x10)
addi x7,x5,0x56
add x9,x5,x7