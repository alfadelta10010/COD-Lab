.data
a: .dword 0x8000123400001234, 0x9000012300001234

.text
la x1,a
lw s1,0(x1)
lw s2,8(x1)
add s3,s1,s2
sltu s4,s3,s2
sw s4,20(x1)

lw s1,4(x1)
lw s2,12(x1)
lw s10,20(x1)
add s5,s10,s2

add s6,s5,s1
sltu s8,s6,s5
