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

### Name of file: week2programs.s


### Observation - Single Cycle
- 10 hexadecimal half words a: .half 0x0000,0x1000,0x0200,0x0030,0x0001,0x0101,0x2010,0x0010,0x1023,0x2011
- These words in the array are added and stored in different registers
- The final result is stored.

### Register Mapping
- **x2:** 0x00000000
- **x3:** 0x00001000
- **x4:** 0x00001000
- **x5:** 0x00000200
- **x6:** 0x00001200
- **x7:** 0x00000030
- **x8:** 0x00001230
- **x9:** 0x00000001
- **x10:** 0x00001231
- **x11:** 0x00000101
- **x12:** 0x00001332
- **x13:** 0x00002010
- **x14:** 0x00003342
- **x15:** 0x00000010
- **x16:** 0x00003352
- **x17:** 0x00001023
- **x18:** 0x00004375
- **x19:** 0x00002011
- **x20:** 0x00006386
- **x21:** 0x00000001
- **x22:** 0x00006387

### Data Mapping
- **0x10000000:** 0x10000000
- **0x10000004:** 0x00300200
- **0x10000008:** 0x01010001
- **0x1000000c:** 0x00102010
- **0x10000010:** 0x20111023
- **0x10000014:** 0x00006387
----------------------------------------------------------------------------------------------



# Program 2:
### Statement : Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of the file : week2programs.s

### Observation -  Single Cycle
- In this program we are trying to add 2 double words (64 bit) numbers using the RV32I, a 32 bit processor
- We are splitting the double word into 2 parts.Once these are created, one of the two parts are added, and checked for carry, and then the other set is added, and again checked for carry. 
- After checking for carry, if the carry from the first part is present that is then added to the other set and the added result is stored..


### Register Mapping 
- **x10:** 0x10000000
- **x11:** 0xffeeacdb
- **x12:** 0xbbbbcccc
- **x13:** 0xbbaa79a7
- **x14:** 0xfeabcfde
- **x15:** 0xeeeeaaaa
- **x16:** 0xed9a7a88
- **x17:** 0xed9a7a89
- **x18:** 0x00000001
- **x19:** 0x00000000

### Data Mapping 
- **0x10000000**: 0xffeeacdb
- **0x10000004** : 0xfeabcfde
- **0x10000008** : 0xbbbbcccc
- **0x1000000c** : 0xeeeeaaaa
- **0x10000010** : 0x00000000
- **0x10000014** : 0x00000000


