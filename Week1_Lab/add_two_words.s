.data
a: .word 0x1234ABCD, 0x00000001
// creating two words . the first word is stored with a base address of a
// with offset 0 , the second word with the same base address but with an 
// offset of 4

.text
la x5,a			//  loading address of a to x5 register
lw x6,0(x5)		// loading the first word to x6 register
lw x7,4(x5)		// loading the second word to x7 register

add x8,x6,x7	// performing the addition and storing the output in x8

sw x8,12(x5)	// storing the value back from resgister to data memory
