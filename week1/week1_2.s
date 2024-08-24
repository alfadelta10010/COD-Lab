.data
a: .half 0x8000,0x1000 #this will the data memory which contains our two data
.text
la x10,a #loading the base address
lh s0,0(x10) #loading the first data into x10
lh s1,2(x10) #loding the second one
add s2,s0,s1 #adding the two half word data
