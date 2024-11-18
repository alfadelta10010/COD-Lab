#WAP TO ADD 2 WORD SIZED VALUES    
.data
a: .word 0x00000111, 0x00000111,0    #storing values in variable 'a' word sized in Hexadecimal
.text
la x2,a        #loading address of variable 'a' to register 'x2'
lw x3,0(x2)    #loading value 0x0111 from memory to register 'x2'. Offset value increases by 4 because its word size
lw x4,4(x2)    #loading value 0x0111 from memory to register 'x3'
add x5,x4,x3   #adding values of register x4 & x3 and storing in register x5 
sw x5,8(x2)    #storing the values back to memory from register x5. 
