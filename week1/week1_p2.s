.data
a: .half 0xff34,0x1231      # Two half words

.text
la x10,a		# Loading the address of a into register x10
lh x11,0(x10)	# Loading the word into register x11
lh x12,2(x10)   # Loading the word into register x12
add x13,x11,x12	# Adding the two words in x11 and x12 and then storing the result in x13
sh x13,4(x10)   # Storing the result
