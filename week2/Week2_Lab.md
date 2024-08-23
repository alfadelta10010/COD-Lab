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
ccode.s

### Observation - Single Cycle
-array of 11 halfwords whose addresses are loaded into x10 register
-their values are loaded into register x10 then each element of the array is added to h which gets updated after every iteration
-the final value of h is stored into a[11] which is  register x12
 
### Register Mapping
-x3:0x00001234
-x4:0x00005678
-x5:0x00001111
-x6:0x00002222
-x7:0x00003333
-x8:0x00004444
-x9:0x00005050
-x10:0x10000000
-x11:0x00007089
-x12:0x0001f651
-x13:0x0001f651
-x14:0x00000101

### Data Mapping
-0x00000064:0x00000000
-0x00000060:0x00068633
-0x0000005c:0x00c686b3
-0x00000058:0x00b686b3
-0x00000054:0x00e686b3
-0x00000050:0x009686b3
-0x0000004c:0x008686b3
-0x00000048:0x007686b3
-0x00000044:0x006686b3
-0x00000040:0x005686b3
-0x0000003c:0x004686b3
-0x00000038:0x003686b3
-0x00000034:0x000106b3
-0x00000030:0x01451603
-0x0000002c:0x01251583
-0x00000028:0x01051703
-0x00000024:0x00e51483
-0x00000020:0x00c51403
-0x0000001c:0x00a51383
-0x00000018:0x00851303
-0x00000014:0x00651283
-0x00000010:0x00451203
-0x0000000c:0x00251183
-0x00000008:0x00051103
-0x00000004:0x00050513
-0x00000000:0x10000517

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
64bitaddition.s

### Observation - Single Cycle
-loading address of two double words in registers x8  and x9
-loading each double word into 2  registers each of word size
-addition operation takes place and using sltu the carry generated is checked and added accordingly
 
### Register Mapping
-x8:0x10000000
-x9:0x10000008
-x10:0xffffffff
-x11:0xffffffff
-x12:0xffffffff
-x13:0xffffffff
-x14:0xfffffffe
-x15:0x00000001
-x16:0xfffffffe
-x17:0x00000001
-x18:0xffffffff

### Data Mapping
-0x00000034:0x00000000
-0x00000030:0x00f80933
-0x0000002c:0x00d838b3
-0x00000028:0x00d58833
-0x00000024:0x00c737b3
-0x00000020:0x00c50733
-0x0000001c:0x0044a683
-0x00000018:0x0004a603
-0x00000014:0x00442583
-0x00000010:0x00042503
-0x0000000c:0x00048493
-0x00000008:0x10000497
-0x00000004:0x00040413
-0x00000000:0x10000417
