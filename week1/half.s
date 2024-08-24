#Write an Assembly Program for addition of 2 bytes
.data 
a: .half 0xffff,0xffee
.text
la x10,a #loading the base address
lh x11,0(x10) #storing 0xffff in x11
lh x12,2(x10) #storing 0xffee in x12
add x7,x11,x12 #adding x11 and x12 and storing x7
sltu x6,x7,x11 #storing carry in x6
sw x7,4(x10) #storing in datamemory
sw x8,6(x10)