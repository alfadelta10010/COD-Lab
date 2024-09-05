.data
a:.word 0x12345678

.text
la x1,a
lw x2,0(x1)

addi x3,x0,0x0FF #We are storing 0xFF value in register 'x3' so that while anding with register 'x2' we can extract the lsb
and x4,x3,x2     #Anding with 'x2' so that lsb '78' is extracted 
slli x4,x4,24    #Shifting it to msb position to make it big endian

slli x3,x3,8     #Shifting 'FF' to 8bits left
and x5,x3,x2     #Anding 'x2' with 'x3' so that the next set of lsb is extracted '56'
slli x5,x5,8     #Shifting '56' to ;left by 8bits to make it big endian form
add x4,x4,x5     #Adding it with '78'. 0x78560000

slli x3,x3,8    #Shifting 'FF' to 8bits left
and x5,x3,x2    #Anding 'x2' with 'x3' so that the next set of lsb is extracted '34'
srli x5,x5,8    #Shifting '34' to right by 8bits to make it big endian form
add x4,x4,x5    #Adding it with '34'. 0x78563400

slli x3,x3,8    #Shifting 'FF' to 8bits left
and x5,x3,x2    #Anding 'x2' with 'x3' so that the next set  is extracted '12'
srli x5,x5,24   #Shifting '12' to right by 24bits to make it big endian form
add x4,x4,x5    #Adding it with '12'. 0x78563412

sw x4,4(x1)     #Finally storing the big endian number in the memory.


