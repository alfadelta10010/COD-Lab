.data
a: .byte 0x03, 0x42,0x33,0x12
b: .byte 0x03
.text
la x10,a              #address of array 
la x11,b             #address of the no to searched
lb x16,0(x11)              #no to be searched
addi x20,x0,4              #no of loops
addi x27,x0,0
loop: lb x12,0(x10)        #loading the values of the array
      beq x12,x16,exit     #checking if no is present in array 
      addi x27,x27,1       #incrementing the loop
      beq x27,x20,exit2    #cheching for the loop iteration i<4
      addi x10,x10,4       #incrementing the array address 
      beq x0,x0,loop       
exit: addi x25,x0,1       #if x25 is 1 the no is present
exit2: nop
