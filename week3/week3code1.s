#5 iterations required
#branch statements are always at the end

#write a program  finding the sum of each element of an array
#c[i]=a[i]+b[i]
.data
a: .half 0x0001, 0x0002, 0x0003, 0x0004
b: .half 0x0005, 0x0006, 0x0007, 0x0008
c: .half 0
.text
la x10,a
la x11,b
la x12,c
addi x13,x0,0
addi x20,x0,5
loop:
    lw x14,0(x10)
    lw x15,0(x11)
    add x16,x14,x15
    sw x16,0(x12)
    addi x13,x13,1
    addi x11,x11,4
    addi x10,x10,4
    addi x12,x12,4
    bltu x13,x20,loop
    