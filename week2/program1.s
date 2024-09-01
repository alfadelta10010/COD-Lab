#The given array has 11 elements of which only a[0] and a[1] are defined, rest all
#elements are 0. each element is half word type 

.data
a: .half 0X1234,0X5678 #defining a[0] and a[1] 
   .half 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000 #defining rest elements

h: .half 0 #defining h


.text
    la x10,a #loading starting address of variable a in x10
    #la x15,h
    #lh x11,0(x15)  We can load starting address of h in x15 and then load h into x11 or,
    li x11,0 #x11 is h. x11 can be directly initialized to imm 0 using li wihout having to define variable h
    li x12,9 #initialze loop counter 10 times a[0] to a[9] 

loop:
    lh x13,0(x10) #load the a[0]
    add x11,x11,x13 # adding h+a[0] in 1st loop iteration; adding a[0]+a[1] in 2nd loop iteration and so on
    addi x10,x10,2 #increment the base address to access a[1] as it is halfword
    addi x12,x12,-1 #decrement the loop counter
    bne x12,x0,loop #branch not equal to: runs the loop until loop counter x12 is 0

    la x10,a # again load the starting address of variable a 0x10000000 
    addi x10,x10,20 # we have to store the sum 'h' in a[10]. PA=BA+offset, offset= index*size of data in bytes = 10*2=20 , PA=0X10000014
    sh x11,0(x10) #x10 contains the address of a[10] i.e 0x10000014
