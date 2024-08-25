.data
# three arrays with values in Hexadecimal format
a: .word 0x06,0x7,0x8,0x09,0x0A
b: .word 0x01,0x02,0x03,0x04,0x05
c: .word 0x00,0x00,0x00,0x00,0x00

.text
la x1, a    #loading base adrress of array 'a' to register 'x1'
la x2, b    #loading base adrress of array 'b' to register 'x2'
la x3, c    #loading base address of array 'c' to register 'x3'

#Element-1
lw x4,0(x1)    #Loading element-1 value '0x06' of array 'a' to register 'x4'. a[0]=0x06 
lw x5,0(x2)    #Loading element-1 value '0x01' of array 'b' to register 'x5'. b[0]=0x01
add x6,x5,x4   #adding both the first elements and storing it in register 'x6'. 0x06+0x01=0x07. 
sw x6,0(x3)    #storing the added value '0x07' as first element in array c[0]=0x07.

#Element-2
lw x4,4(x1)    #Loading element-2 value '0x07' of array 'a' to register 'x4'. a[1]=0x07 
lw x5,4(x2)    #Loading element-2 value '0x02' of array 'b' to register 'x5'. b[1]=0x02 
add x6,x5,x4   #adding both the second elements and storing it in register 'x6'. 0x07+0x02=0x09.
sw x6,4(x3)    #storing the added value '0x09' as second element in array c[1]=0x09.

#Element-3
lw x4,8(x1)    #Loading element-3 value '0x08' of array 'a' to register 'x4'. a[0]=0x08
lw x5,8(x2)    #Loading element-3 value '0x03' of array 'b' to register 'x5'. b[1]=0x03
add x6,x5,x4   #adding both the third elements and storing it in register 'x6'. 0x08+0x03=0x0B.
sw x6,8(x3)    #storing the added value '0x07' as third element in array c[0]=0x07.


#Element-4
lw x4,12(x1)    #Loading element-4 value '0x09' of array 'a' to register 'x4'. a[0]=0x09
lw x5,12(x2)    #Loading element-4 value '0x04' of array 'b' to register 'x5'. b[1]=0x04
add x6,x5,x4    #adding both the fourth elements and storing it in register 'x6'. 0x09+0x04=0x0D.
sw x6,12(x3)    #storing the added value '0x0D' as fourth element in array c[0]=0x0D.

#Element-5
lw x4,16(x1)    #Loading element-1 value '0x0A' of array 'a' to register 'x4'. a[0]=0x0A
lw x5,16(x2)    #Loading element-1 value '0x05' of array 'b' to register 'x5'. b[1]=0x05
add x6,x5,x4    #adding both the fifth elements and storing it in register 'x6'. 0x0A+0x05=0x0F.
sw x6,16(x3)    #storing the added value '0x0F' as fifth element in array c[0]=0x0F.






