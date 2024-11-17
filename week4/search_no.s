## ALP to search a number in the array

.data
array: .word 0x01223113, 0x45362727,0x33434343,0x11211212
search: .word 0x45362727

.text
la x10,array              #address of array 
la x11,search             #address of the no to searched

lw x16,0(x11)              #no to be searched

addi x20,x0,4              #no o loops
addi x27,x0,0

loop: lw x12,0(x10)        #loading the values of the array
      beq x12,x16,exit     #checking if no is present in array 
      addi x27,x27,1       #incrementing the loop
      beq x27,x20,exit2    #cheching for the loop iteration i<4
      addi x10,x10,4       #incrementing the array address 
      beq x0,x0,loop       


exit: addi x25,x0,1       #if x25 is 1 the no is present
      
exit2: nop