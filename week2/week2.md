# Program 1: 
### Statement: # i.Write an Assembly Program for the following C code:
    # main() {
	# unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	# h = 0;
	# for(i = 0; i < 10; i++)
	# {
	#	h = h + a[i];
	# }
	# a[10] = h;
     }


### Name of file:
program1.s

### Observation - Single Cycle
- The given array has 11 elements of which only a[0] and a[1] are defined, rest all elements are zero. Each element is half word type.
- Define the elements of array 'a' and define 'h' to 0 in .data 
- Load the starting/base address of array 'a' in x10
- Load immediate value 0 to x11, where x11 is h using 'li'
- Load immediate value 9 to x12, where x12 hold the loop counter 10 times a[0] to a[9]
- define a label - loop
- Load a[0] in x13 in 1st iteration, a[1] in x13 in 2nd iteration, a[2],.....,a[10] in x13 wrt further iterations 
- Add h+a[0] in first loop iteration and add a[0]+a[1] in second loop iteration and so on...
- Increment the base address x10 to access a[1] with offset 2 by adding x10 with immediate value 2 
- Decrement the loop counter by -1 in each loop iteration 
- Check branch not equal: x12 equals x0  wrt to the label-loop. The loop runs until x12 is 0
- After the sum of all array elements is stored in h, load the base address of 'a' in x10 i.e 0x10000000
- Calculate the PA of a[10], PA= BA of a+offset, offset = index*size of data in bytes. PA = 0x10000000 + (10*2) = 0x10000014
- Store the resultant h in a[10]

### Register Mapping
- *x10:* 0x10000000, increments by 2 to load each half word of 'a' and final value is 0x100000014, address of a[10]
- *x11:* 0x00000000, 0x00001234 in 1st iteration, 0x000068ac from 2nd to 10th iteration
- *x12:* 0x00000009 decrements by -1 to final value 0x00000000
- *x13*: 0x00001234 in 1st iteration, 0x00005678 in 2nd iteration, 0x00000000 from 3rd iteration to 10th iteration


### Data Mapping
- *0x10000000:* 0x56781234
- *0x10000004:* 0x00000000
- *0x10000008:* 0x00000000
- *0x1000000c:* 0x00000000
- *0x10000010:* 0x00000000
- *0x10000014:* 0x000068ac



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
program2.s

### Observation - Single Cycle
- Define two 64 bit numbers as 4 words in array a
- 4 words: lower significant word num-1 0xFFFFFFFF, upper significant word num-1 0x12345678 and lower significant word num-2 0x00001234, upper significant word num-2 0x0000ABCD
- Load the base address of a in x10
- Load lower sig. word - num1 in x11
- Load upper sig. worf - num1 in x12 with offset 4
- Load lower sig. word - num2 in x13 with offset 8
- Load upper sig. worf - num2 in x14 with offset 12
- Add lower sig. words of num1 and num2 and store the result in x15
- Check carry for the above addition: store 1 in x16 if x15<x11 
- Store the overflowed sum present in x15, in data memory
- Add upper sig. words of num1 and num2 and store the result in x17
- Add the result in x17 with carry 1 in x16 and store resultant in x17 
- Store resultant in x17, in data memory 

### Register Mapping
- *x10:* 0x10000000
- *x11:* 0xFFFFFFFF
- *x12:* 0x12345678
- *x13:* 0x00001234
- *x14:* 0x0000ABCD
- *x15:* 0x00001233
- *x16:* 0x00000001
- *x17:* 0x12350246

### Data Mapping
- *0x10000000:* 0xFFFFFFFF
- *0x10000004:* 0x12345678
- *0x10000008:* 0x00001234
- *0x1000000C:* 0x0000ABCD
- *0x10000010:* 0x00001233
- *0x10000014:* 0x12350246


...

...
