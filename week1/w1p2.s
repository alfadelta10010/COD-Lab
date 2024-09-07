# ii.Write an Assembly Program for addition of 2 half words

.data
a: .half 0XFFF9,0X0004 #-7 and 4 stored in data memory 

.text
la x10,a # pseudo instruction to load the starting address of variabele a in x10
lh x11,0(x10) #load the -7 into reg x11
lh x12,2(x10) # load 4 into reg x12 with offset 2 as data memory is byte addressable
add x13,x11,x12 #add -7+4
sh x13,4(x10)# store content of x13 i.e -3 in data at location 0x100000004
