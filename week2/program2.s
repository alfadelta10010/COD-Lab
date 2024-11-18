#Program 2
.data
a: .word 0x10000000
.text
la x10,a
addi x11,x11,60 #y
addi x12,x12,20 #m
add x4, x11, x12  #y+m
addi x13,x13,35 #L
addi x14,x14,10 #D
sub x5, x13, x14  #L-D
sub x4, x4, x5    #(y+m)-(L-D)
addi x15,x15,8  #Z
addi x16,x16,5  #C
add x6, x15, x16  #Z+C
sub x6,x6,x14   #(Z+C)-D
add x7, x4, x6