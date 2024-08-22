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
program1.s

### Observation - Single Cycle
its storing the content of a in one register and content of b in another register and then adding them. Then final value is stored in another register.
 
### Register Mapping
- x13:content of a
x14: content of b
x15: final value after adding

### Data Mapping
- 0x00000000:0x10000517
0x00000004:0x00050513
0x00000008:0x10000597
0x0000000c:0x00258593
0x00000010:0x10000617
0x00000014:0x00460613
0x00000018:0x00055683
0x0000001c:0x0005d703
0x00000020:0x00d707b3
0x00000024:0x00f62023
0x00000028:0x00455683
0x0000002c:0x0045d703
0x00000030:0x00d707b3
0x00000034:0x00f62223
0x00000038:0x00855683
0x0000003c:0x0085d703
0x00000040:0x00d707b3
0x00000044:0x00f62423
0x00000048:0x00c55683
0x0000004c:0x00c5d703
0x00000050:0x00d707b3
0x00000054:0x00f62623
0x00000058:0x01055683
0x0000005c:0x0105d703
0x00000060:0x00d707b3
0x00000064:0x00f62823
0x00000068:0x00000000

...
