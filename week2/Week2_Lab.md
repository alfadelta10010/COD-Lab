# Program 1: 
### Statement: Write an Assembly Program for the following C code:
    main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
    }

### Name of file:
Week2_Lab.s

### Observation - Single Cycle
- We create an array 'a' with 11 values initialised. Load the base address of a into x10 nd load individual values of array into registers x20 using load half word (lh) instruction.
- Adding the value of register holding h to individual elements of the array. We add 2 to the base address as offset in every iteration to go to next element (since its half word). At the same time we add 1 to iterating variable in x18 each time. Using branch if less than (blt) instruction we loopback until i reaches value 10.
- Finally we writeback the final value of h into 10th element of 'a' (a[10]) in data memory using store half word (sh) instruction.
 
### Register Mapping
- **x10:** 0x10000000
- **x18:** 0x0000000a
- **x19:** 0x00012c7d  &ensp; # Final Value of 'h'
- **x20:** 0x00002425
- **x25:** 0x0000000a

### Data Mapping
- **0x10000000:** 0x56781234
- **0x10000004:** 0x12130910
- **0x10000008:** 0x16171415
- **0x1000000c:** 0x20211819
- **0x10000010:** 0x2c7d2223
- **0x10000014:** 0x00002627

...

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
Week2_Lab.s

### Observation - Single Cycle
- Store the 64-bit (double word) numbers into 4 32-bit registers in the order of MSB1, LSB1, MSB2, LSB2.
- Load the LSB values of both numbers into 2 registers and add them. Check for carry using sltu instruction and store in another register. (sets value 1 if result value is greater  than either of the operands).
- Perform the same steps for MSB of both numbers. FInally add the carry to the sum of MSB values. Check for carry in MSB addition using sltu to check for overflow in addition.
- Result (MSB,LSB final value) is stored back into memory.
 
### Register Mapping
- **x2:**  0x10000000
- **x18:** 0x90000123
- **x19:** 0xffffffff
- **x20:** 0x90000122
- **x21:** 0x00000001
- **x22:** 0x80001234
- **x23:** 0x90001234
- **x24:** 0x10002468
- **x25:** 0x00000001
- **x26:** 0x10002469

### Data Mapping
- **0x10000000:** 0x80001234
- **0x10000004:** 0x90000123
- **0x10000008:** 0x90001234
- **0x1000000c:** 0xffffffff
- **0x10000014:** 0x90000122
- **0x10000018:** 0x10002469

...
