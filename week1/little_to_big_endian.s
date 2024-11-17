.data
a: .word 0x12345678 # Define a word-sized variable 'a' and initialize it with the value 0x12345678

.text
la x4,a # Load the address of 'a' into register x4
lw x5,0(x4) # Load the word at the address in x4 (value of 'a') into register x5
andi x6,x5,0xff # Isolate the least significant byte (LSB) 
slli x6,x6,24 # Shift the isolated byte left by 24 bits to place it in the MSB position

srli x7,x5,8 # Shift x5 right by 8 bits to move the second byte into the LSB position
andi x8,x7,0xff # Isolate the second byte
slli x8,x8,16 # Shift the isolated byte left by 16 bits to place it in the second MSB position

add x9,x8,x6 # Add the first and second bytes (in x6 and x8) and store the result in x9
srli x10,x5,16 # Shift x5 right by 16 bits to move the third byte into the LSB position
andi x11,x10,0xff # Isolate the third byte by ANDing with 0xff
slli x11,x11,8 # Shift the isolated byte left by 8 bits to place it in the third MSB position

add x12,x11,x9 # Add the result of the first two bytes (in x9) and the third byte (in x11), store in x12
srli x13,x5,24 # Shift x5 right by 24 bits to move the fourth byte (MSB) into the LSB position, store in x13

add x15,x13,x12 # Add the fourth byte (in x14) to the result of the first three bytes (in x12), store in x15
sw x15,4(x4) # Store the final result (sum of the bytes) at the address 4 bytes after 'a'
