.data 
x: .word 0x012345678
.text
auipc x10,0x10000
addi x10 x10 0    #All Hazards are resolved by the Hazard Unit by introducing nops (Stalls)
lb x5,0(x10)	  #Even Dependecies are resolved by using nops
addi x7,x5,0x56
add x9,x5,x7