.data
a:.byte 0x1E, 0x28,0x18,0xE0,0x05
b:.byte 0,0,0,0,0
.text
la x20,a
la x21,b
addi x22,x0,5
Loop:
lbu a0,0(x20)        # a[0]  after execution of bne a[1]
jal x1,twoOutFive
sb a,0(x21)
addi x20,x20,1     # we access the next element by  index
addi x21,x21,1
addi x22,x22,-1    # x22 = 4
bne x22,x0,Loop
Same:
    j Same


twoOutFive:
    

FinalExit:nop 