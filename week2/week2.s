Week 2
1. Write an Assembly Program for:
        a.addition of N words
        b. addition of N half words
        c. addition of N bytes

# Program 1a
.data
a: .word 0x12345678,0x00001111
.text

la x18,a		    #Loads base address
lw x19,0(x18)		#Loads word to register x19	
lw x20,4(x18)		#Loads word to register x20
add x21,x19,x20		#adds the values in x19,x20 and stores result in x21
sw x21,8(x18)		#stores result in memory


#Program 1b 
.data
a: .half 0x1234,0x1111

.text
la x18,a		    #Loads base address
lh x19,0(x18)		#Loads half word to register x19	
lh x20,2(x18)       #Loads half word to register x20
add x21,x19,x20		#adds the values in x19,x20 and stores result in x21
sh x21,4(x18)		#stores result in memory


# Program 1c
.data
a: .byte 0x14 , 0x01

.text
la x18, a		    #Loads base address
lb x19, 0(x18)		#Loads byte to register x19
lb x20, 1(x18)		#Loads byte to register x20
add x21,x19,x20		#adds the values in x19,x20 and stores result in x21
sb x21,2(x18)		#stores result in memory


2. Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide

.data
a: .word 0x10000000

.text
la x10,a
addi x11,x11,30 #y
addi x12,x12,20 #m
add x4, x11, x12  #y+m
addi x13,x13,30 #L
addi x14,x14,10 #D
sub x5, x13, x14  #L-D
sub x4, x4, x5    #(y+m)-(L-D)
addi x15,x15,5  #Z
addi x16,x16,5  #C
add x6, x15, x16  #Z+C
sub x6,x6,x14   #(Z+C)-D
add x7, x4, x6 # x7 = ((y + m) - (L - D)) + ((Z + C) - D) = 30 + 0 = 30
