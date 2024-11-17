Week2

i) addition of word
 .data
a: .word 0x80001111,0x10000000
.text
la x10,a #loading the base address
lw s0,0(x10) #loading the content of data memory into register
lw s1,4(x10) #same for next data
add s3,s0,s1 #adding the two data


ii) addition of half words
.data
a: .half 0x8000,0x1000 #this will the data memory which contains our two data
.text
la x10,a #loading the base address
lh s0,0(x10) #loading the first data into x10
lh s1,2(x10) #loding the second one
add s2,s0,s1 #adding the two half word data



iii) addition of bytes
.data
a: .byte 0x80,0x10
.text
la x10,a
lb s0,0(x10)
lb s1,1(x10)
add s2,s0,s1.data
a: .dword 0x8000123400001234, 0x9000012300001234


iv)
.text
add t0,x1,x2 #x,m
sub t1,x3,x4 #L,D
add t2,x5,x6 #Z,C
sub t3,t0,t1
add t4,t2,t3
sub x10,t4,x7 #D

