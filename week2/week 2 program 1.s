.data
a: .half 0x1234,0x5678,0x1234,0x5678

.text
la x10,a
addi x11,x0,10

back:
    lhu x20,0(x10)
    add x12,x12,x20
    addi x10,x10,2
    addi x13,x13,1 
    bltu x13,x11,back 

sw x12,0(x10)