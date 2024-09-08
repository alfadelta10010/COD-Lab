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


### Name of file:week2.q1.s

### Observation -The code is loading each half word into a register and adding it to itself

### Register Mapping
-x10:0x10000000
-x1:0x00004321
-x2:0x002e4600

### Data Mapping
-0x10000000:0x1723
-0x10000004:0xf201
-0x10000008:0x0008
-0x1000000c:0x1234
-0x10000014:0x5a11
-0x10000018:0x0001
-0x1000002c:0x0002
-0x10000024:0xa120
-0x10000028:0x9000
-0x1000003c:0x4321





# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:week2.q2.s

### Observation - Storing the 64 bit number in rv32 riscv processor by spliting the num into msb and lsb and storing it in 32 bit register Adding the lsb and then adding msbs along with the carry of lsb's addition
 
### Register Mapping
-x1:0x10000000
-x2:0xffffffff
-x3:0xffffffff
-x4:0x10000008
-x5:0xffffffff
-x6:0xffffffff
-x7:0xfffffffe
-x8:0xfffffffe
-x9:0x00000001
-x10:0x00000001
-x11:0xffffffff

### Data Mapping
0x10000000:0xffffffff
0x10000004:0xffffffff
0x10000008:0xffffffff
0x1000000c:0xffffffff
0x10000014:0xffffffff
0x10000010:0xfffffffe
0x1000001c:0x00000001