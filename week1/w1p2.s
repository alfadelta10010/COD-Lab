.data
a: .half 0x0202, 0x5678 # Two 16-bit half-words stored in memory

.text
la x10, a  #Load address of 'a' into register x10
lh x11, 0(x10) #Load the first half-word from memory (0x0202) into x11
lh x12, 2(x10)   #Load the second half-word from memory (0x5678) into x12
add x13, x11, x12 #Add the values in x11 and x12, store the result in x13
sh x13, 4(x10)   #Store the result from x13 into memory location 4(a)