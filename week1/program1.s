.data
a: .word 0x78563412 # Define a word-sized variable 'a' and initialize it with the value 0x12345678

.text
la x4,a            # Load the address of 'a' into register x4
lw x5,0(x4)        # Load the word at the address in x4 (value of 'a') into register x5
andi x6,x5,0xff    # Isolate the least significant byte (LSB) 
slli x6,x6,24      #Shift the isolated byte left by 24 bits to place it in the MSB position

srli x5,x5,8       # Shift x5 right by 8 bits to move the second byte into the LSB position
andi x7,x5,0xff    # Isolate the second byte
slli x7,x7,16      # Shift the isolated byte left by 16 bits to place it in the second MSB position

add x6,x7,x6       # Add the first and second bytes (in x6 and x7) and store the result in x6 itself
srli x5,x5,8       #Shift x5 right by 8 bits to move the third byte into the LSB position
andi x7,x5,0xff    # Isolate the third byte by ANDing with 0xff
slli x7,x7,8       # Shift the isolated byte left by 8 bits to place it in the third MSB position

add x6,x7,x6       # Add the result of the first two bytes (in x6) and the third byte (in x7), store in x6
srli x5,x5,8       # Shift x5 right by 8 bits to move the fourth byte (MSB) into the LSB position, store in x5
         
add x6,x5,x6   # Add the fourth byte (in x5) to the result of the first three bytes (in x12), store in x6 to get the result
sw x10,4(x4)