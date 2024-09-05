#1
.data                              
a: .half 0x1234,0x5678,0,0,0,0,0,0,0,0,0  # Define an array 'a' with eleven 16-bit (halfword) values

.text                                
la x10,a                             # Load the address of array 'a' into register x10
addi x11,x0,10                       # Set register x11 to 10, the loop limit (number of elements to process)

back:                                # Label marking the start of the loop
    lhu x20,0(x10)                   # Load 16-bit unsigned halfword from address in x10 into register x20
    add x12,x12,x20                  # Add the value in x20 to x12 and store the result in x12 (accumulating sum)
    addi x10,x10,2                   # Increment the address in x10 by 2 to point to the next halfword in the array
    addi x13,x13,1                   # Increment the loop counter x13 by 1
    bltu x13,x11,back                # If x13 is less than x11, branch back to the start of the loop

sw x12,0(x10)                        # Store the final accumulated sum from x12 into memory at the address in x10

#2
.data
a: .word 0x12345678  
b: .word 0x29393739  
c: .word 0x13753293  
d: .word 0x36396494  

result_lower: .word 0x00000000
result_upper: .word 0x00000000
.text

    la x10,a
    lw x11,0(x10)  
    la x10,b
    lw x12,0(x10)  
    la x13,c
    lw x14,0(x13)  
    la x12,d
    lw x15,0(x13)  

    add x16,x11,x14  
    sltu x17,x16,x11
    add x18 ,x12,x15 
    add x19,x18,x17
    la x20,result_lower  
    sw x16,0(x20)        
    la x21,result_upper  
    sw x18,0(x21)        

 

