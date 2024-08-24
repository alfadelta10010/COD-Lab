# Program 1: 
### Statement: <Write an Assembly Program for the following C code:>
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
<COD-Lab/Week2/lab2code2loop.s>

### Observation - Single Cycle
- 
 
### Register Mapping
- x0:0x00000000
- x1:0x00000000
- x2:0x00001234
- x3:0x00005678
- x4:0x00001111
- x5:0x00002222
- x6:0x00003333
- x7:0x00005656
- x8:0x00005550
- x9:0x00000111
- x10:0x10000000
- x11:0xffff8971
- x12:0x0001266b
- x13:0x0001266b

### Data Mapping
- 0x10000014:0x00002131
- 0x10000010:0x89710111
- 0x1000000c:0x55505656
- 0x10000008:0x33332222
- 0x10000004:0x11115678
- 0x10000000:0x12340000


# Program 1: 
### Statement: <2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I >

### Name of file:
<COD-Lab/Week2/lab2code1.s>

### Observation - Single Cycle
- 
 
### Register Mapping
- x10:0x10000000
- x11:0x10000008
- x12:0xffffffff
- x13:0xffffffff
- x14:0xffffffff
- x15:0xffffffff
- x16:0xfffffffe
- x17:0xfffffffe
- x18:0x00000001
- x19:0x00000001
- x20:0xffffffff



### Data Mapping
- 0x1000000c:0xffffffff
- 0x10000008:0xffffffff
- 0x10000004:0xffffffff
- 0x10000000:0xffffffff
