#program-1
.data
a:.word 0x11111111,0x22222222,0x33333333,0x44444444
b:.word 0x55555555,0x66666666,0x77777777,0x88888888
c:.word 0x00000000,0x00000000,0x00000000,0x00000000
.text
#loading the addres
la x5,a
la x6,b
la x7,c

#adding 0th elements
lw x10,0(x5)
lw x11,0(x6)
add x20,x10,x11
sw x20,0(x7)

#adding 0th elements
lw x12,4(x5)
lw x13,4(x6)
add x21,x12,x13
sw x21,4(x7)

#adding 0th elements
lw x14,8(x5)
lw x15,8(x6)
add x22,x14,x15
sw x22,8(x7)

#adding 0th elements
lw x16,12(x5)
lw x17,12(x6)
add x23,x16,x17
sw x23,12(x7)


#program-2
.data
a:.dword 0xffffffffffffffff,0xffffffffffffffff 
b:.dword 0x0000000000000000
.text
# loading the address into registers
la x10,a
la x20,b
#loading only lsb of 2 doublewords into registers
lw x12,0(x10)
lw x14,8(x10)
#loading only msb of 2 double into registers.
lw x13,4(x10)
lw x15,12(x10)
#adding only lsb 
add x16,x12,x14
#checking is there any overflow while adding lsb.
sltu x18,x16,x14
#adding only msb
add x17,x13,x15
#adding overflow into overflow
add x19,x17,x18
#storing the 64 or 65 bit new result in memory.
sw x16,0(x20)
sw x19,4(x20)
sw x17,8(x20)


#week-2.md
Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
    add_double.s

### Observation - Single Cycle
- The code adds two 64-bit integers stored in an array a. It splits each 64-bit integer into upper and lower 32-bit halves, performs addition on the lower halves, and then on the upper halves, accounting for any carry from the lower half addition. The results are stored back in memory at specified offsets in the array a, with the final carry stored separately. 


### Register Mapping
- x11:0xffffffff
  x12:0xffffffff
  x13:0xffffffff
  x14:0xffffffff
  x15:0xfffffffe
  x16:0x00000001
  x17:0xfffffffe
  x18:0x00000001
  x19:0xffffffff
### Data Mapping
- 0x10000018:0x00000001
  0x10000014:0xffffffff
  0x10000010:0xfffffffe
  0x1000000c:0xffffffff
  0x10000008:0xffffffff
  0x10000004:0xffffffff
  0x10000000:0xffffffff;


# Program 2:### Statement:Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
};

### Name of file:
    add_array.s
### Observation - Single Cycle
*) The elements from two arrays a and b and stores the results in a third array c.
*) It iteratively loads elements from a and b, performs the addition, and stores the result back into c. The code processes five elements, using offsets to access each element in the arrays. The final state of array c contains the sums of the respective elements from a and b.

### Register Mapping
   x10:0x11111111
   x11:0x22222222
   x12:0x33333333
   x13:0xffffffff
   x14:0x44444444
   x15:0x55555555
   x16:0x66666666
   x17:0x77777777
   x20:0x00000000
   x21:x000000000
   x22:0000000000
   x23:x000000000




### Data Mapping


 0x1000002c:0x00000000
 0x10000028:0x00000000
 0x10000024:0x00000000
 0x10000020:0x00000000
 0x1000001c:0x88888888
 0x10000018:0x77777777
 0x10000014:0x66666666
 0x10000010:0x55555555
 0x1000000c:0x44444444
 0x10000008:0x33333333
 0x10000004:0x22222222
 0x10000000:0x11111111
