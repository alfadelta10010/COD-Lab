
# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I


### Name of file:
Week2_lab.s

### Observation - Single Cycle
- Two 64-bit no.s are defined in the data segment . The address of the array is loaded in the register x10 by la instruction .The lsb of two 64 bit no.s are added and stored in one register(32 bit).If the carry is generated it is loaded into x16 register and with it  the msb of two no.s are added and  stored in another register i.e x18 therefore the results are stored using sw instruction. 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x98123490
- **x12:** 0xabcdef98
- **x13:** 0xbfeac90d
- **x14:** 0x87651230
- **x15:** 0x57fcfd9d
- **x16:** 0x00000001
- **x17:** 0x333301c8
- **x18:** 0x333301c9



### Data Mapping
- **0x10000014:** 0x333301c9
- **0x10000010:** 0x57fcfd9d
- **0x1000000c:** 0x87651230
- **0x10000008:** 0xbfeac90d
- **0x10000004:** 0xabcdef98
- **0x10000000:**0x98123490



# Program 1: 
•	### Statement: 
i.	Write an Assembly Program for the following C code:
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
Week2_lab.s

### Observation - Single Cycle
- The values are initialized in array.It adds the first 10 values together by adding them in each step. The final sum is stored in the 11th element of the specified array
### Register Mapping
- **x5:** 0x10000000
- **x6:** 0x00001234
- **x7:** 0x00005678
- **x8:** 0x00001678
- **x9:** 0x00002340
- **x10:** 0x00004987
- **x11:** 0x00004535
- **x12:** 0x00002025
- **x13:** 0x00007763
- **x14:** 0xffff8976
- **x15:** 0x00001231
- **x16:** 0xffff875
- **x20:** 0x0001644f





### Data Mapping
- **0x10000014:** 0x00008751
- **0x10000010:** 0x644f8976
- **0x1000000c:** 0x77632025
- **0x10000008:** 0x45354987
- **0x10000004:** 0x23401678
- **0x10000000:** 0x56781234







