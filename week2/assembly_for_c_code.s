# the for loop code

.data
a: .half 0xF001,0x0002, 0x9ABC , 0x0D01,0x0002,0x0003,0x0004, 0xF001, 0x0005,0x0006,0x0000
h: .half 0

# creating two variables of short int size

.text
la x5, h
la x6,a

lhu x7,0(x5)

# Loading both the array and h as unsigned in the register , so the remaining upper
# 16 bit gets stored as 0.

# the for loop in c code runs for 10 times, therefore 10 iterations.
# In each iteration , the code does loading of the next array element and adding with h 
# and storing it back to the h register.

# 1st iteration

lhu x8,0(x6)
add x7,x7,x8

# 2nd iteration

lhu x8,2(x6)
add x7,x7,x8

# 3rd iteration

lhu x8,4(x6)
add x7,x7,x8

#4th iteration

lhu x8,6(x6)
add x7,x7,x8

# 5th iteration

lhu x8,8(x6)
add x7,x7,x8

# 6th iteration

lhu x8,10(x6)
add x7,x7,x8

# 7th iteration

lhu x8,12(x6)
add x7,x7,x8


# 8th iteration

lhu x8,14(x6)
add x7,x7,x8


# 9th iteration

lhu x8,16(x6)
add x7,x7,x8


# 10th iteration

lhu x8,18(x6)
add x7,x7,x8

sh x7,20(x6)
lhu x10,20(x6)        # operation performed to assign the x[10] = h. 
sltu x10,x10,x7
sh x10,22(x6)        # operation performed to store the carry inn data memory.

# since we are adding 2 halfwords of unsigned type , all the other bits are zero,
# hence the sltu is not required after each addition since it gets stored in the upper 
# 16 bits of the register.