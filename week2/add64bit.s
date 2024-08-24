.data
a: .dword 0x8000123400001234, 0x9000012300001234 #adding data into the memory of base address 0x10000000

.text
la x1,a #loading the base-address into x1
lw s1,0(x1) #loading the first LSB 4 bytes of element 1 into register s1 
lw s2,8(x1) #loading the LSB 4 bytes of element 2 into register s2
add s3,s1,s2 # adding the two LSB elements and storing the value in s3
sltu s4,s3,s2 # comparing the value of s3 with s2, if its less then 1 else 0, basically 
	      # knowing whether our addition created a carry or not
sw s4,20(x1) # storing the carry in the 20th memory location

lw s1,4(x1) # loading the MSB of first element into the s1 register
lw s2,12(x1) # loading the MSB of next element into the s2 register
lw s10,20(x1) # loading the carry generated in the first addition of our LSB elements
add s5,s10,s2 # Adding the carry generated with the MSB bit of the second number

add s6,s5,s1 # now adding the MSB of first element and the previously added value 
sltu s8,s6,s5 # getting the carry out of our last addition
