# Program 1:
### Statement: Write an Assembly Program for the following C code
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
<COD-Lab/week2/exp1.s>

### Observation - Single Cycle:
- As we haven’t covered looping constructs in assembly code, we use three separate registers: two for holding the initial values and a third for storing the results of the additions.
- We first load the initial 4 bytes of the numbers, and then proceed to load the remaining bytes into the designated memory registers.
- Instead of using a loop to perform the addition repeatedly, we manually execute the addition multiple times and keep the results in a register.

### Register Mapping
- x3:0x00001234
- x4:0x00005678
- x5:0x00001111
- x6:0x00002222
- x7:0x00003333
- x8:0x00004444
- x9:0x00005050
- x10:0x10000000
- x11:0x00007089
- x12:0x0001f651
- x13:0x0001f651
- x14:0x00000101

### Data Mapping
- 0x10000014:0x00002121
- 0x10000010:0x70890101
- 0x1000000c:0x50504444
- 0x10000008:0x33332222
- 0x10000004:0x11115678
- 0x10000000:0x12340000

...

# Program 2:
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
<COD-Lab/week2/exp2.s>

### Observation - Single Cycle:
- To handle 64-bit addition, we define our variables as double words and store the corresponding values.
- Since RV32I architecture supports only 32-bit operations, we split the double word into two separate 32-bit words and load them from the most significant bit (MSB) to the least significant bit (LSB).
- We perform the addition of the two 32-bit words, storing the result in a register. If a carry is generated, we use the shift-left operation to handle the carry and store the result in another register. We then add this carry with the remaining 32 bits, and if there’s another carry, we store it in yet another register.
- Finally, we combine all the carries and the addition result into a final register.

### Register Mapping
- x15:0x10000000
- x16:0x10000008
- x17:0xffffffff
- x18:0xffffffff
- x19:0xffffffff
- x20:0xffffffff
- x21:0xfffffffe
- x22:0x00000001
- x23:0xfffffffe
- x24:0xffffffff

### Data Mapping
- 0x1000000c:0xffffffff
- 0x10000008:0xffffffff
- 0x10000004:0xffffffff
- 0x10000000:0xffffffff

...
