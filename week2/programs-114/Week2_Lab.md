# Program 1: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
 64 bit addition.s

### Observation - Single Cycle
- Load lower 32 bits of first number from memory into x10
- Load upper 32 bits of first number from memory into x11
- Load lower 32 bits of second number from memory into x12
- Load upper 32 bits of second number from memory into x13

- Add lower parts of both numbers and store result in x14
- Set x15 to 1 if x14 < x10 (check for carry from lower addition)
- Add upper parts of both numbers and store result in x16
- Set x17 to 1 if x16 < x11 (check for carry from upper addition)
- Add carry from lower addition to upper part sum

- Store lower part of result from x14 to memory
- Store upper part of result from x16 to memory
- Store carry flag (0 or 1) to memory
 
### Register Mapping
- x4  : 0x10000000
- x10 : 0x88748371
- x11 : 0x93793166
- x12 : 0x60282002
- x13 : 0x00000086
- x14 : 0xe89ca373
- x15 : 0x00000000
- x16 : 0x937931ec
- x17 : 0x00000000
- x21 : 0x10000010

### Data Mapping
- 0x1000001c : 0x00000000
- 0x10000018 : 0x00000000
- 0x10000014 : 0x937931ec
- 0x10000010 : 0xe89ca373
- 0x1000000c : 0x00000086
- 0x10000008 : 0x60282002
- 0x10000004 : 0x93793166
- 0x10000000 : 0x88748371


#Program 2:
###statement:Write an Assembly Program for the following C code:
main()
 {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}

###Name of File :
 forloop.s

### Observation - Single Cycle
 
- we Declare a half-word array named 'a' with specified hexadecimal values.
- we Load the address of the 'a' array into register x5 (pointer).
- we Initialize register x6 to 0 (accumulator for the sum).
- we Initialize register x7 to 0 (loop counter).
- we Initialize register x8 to 11 (loop termination condition).
- again: -> Label marking the beginning of the loop.
- we Load the current half-word element from the array into register x13.
- we Add the current element (x13) to the accumulator (x6).
- we Increment the loop counter (x7) by 1.
- we Increment the array pointer (x5) by 2 bytes (size of a half-word).
- we Branch back to 'again' if the loop counter (x7) is not equal to the loop termination condition (x8).
- we Store the final sum (x6) as a half-word at the address pointed to by x5 (last element of the array).

### Register Mapping
- x5->0x10000016
- x6->0x00048c70
- x7->0x0000000b
- x8->0x0000000b
- x13->0x0000c1d1

### Data Mapping
- 0x10000014:0x8c70c1d1
- 0x10000010:0xa1b18191
- 0x1000000c:0x61714151
- 0x10000008:0x21310111
- 0x10000004:0xdef19abc
- 0x10000000:0x56781234
