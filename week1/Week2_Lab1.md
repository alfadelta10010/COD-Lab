# Program 1: 
### Statement:Write an Assembly Program for the following C code:
#main() {
#	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
#	h = 0;
#	for(i = 0; i < 10; i++)
#	{
#		h = h + a[i];
#	}
#	a[10] = h;
#}

### Name of file:
assign1

### Observation - Single Cycle
- The code loads the address of the variable holding the half words.
- It then loads the half words into registers.
- Then it adds and saves the sum of the half words using a loop.
### Register Mapping
- x10 - 0x10000000
- x11 - 0x1000000a
- x12 - 0x10000014
- x13 - 0x00000036
- x14 - 0x00000000
- x15 - 0x00000036
### Data Mapping
- 0x1000001c - 0x0000008c
- 0x10000018 - 0x00000068
- 0x10000014 - 0x00000043
- 0x10000010 - 0x00370036
- 0x1000000c - 0x00350034
- 0x10000008 - 0x00320055
- 0x10000004 - 0x00440033
- 0x10000000 - 0x00220011
