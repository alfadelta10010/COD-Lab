#WAP to add 2 byte sized number 0x03 and 0X01
.data
a: .byte 0x03,0x01,0    #storing values 15&1 in variable 'a' halfword sized in Hexadecimal
.text
la x1,a        #loading address of variable 'a' to register 'x1'
lb x2,0(x1)    #loading value 0x03 from memory to register 'x2'.
lb x3,1(x1)    #loading value 0x01 from memory to register 'x3'.
add x4,x3,x2   #adding values of registers x3&x2 and storing it in register x4. Final value is 0x04, 4 in decimal format
sh x4,2(x1)    #storing it back to memory from x4 register.
