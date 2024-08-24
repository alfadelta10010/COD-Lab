# Program 1:
### Statement: <Assembly Program for the c code given>

### Name of file:<lab3p1.s>

### Observation - Single Cycle
	<this code is for loading each halfword in an array to a register
		and adding it to itself and storing >


### Register Mapping
-**<Register Number used>:**<Value stored>
		x10		0x10000000
		x0		0x00000000
		x1		0x00001277
		x2		0x6a246800
				
### Data Mapping
-**<Memory Address>:**<Value Stored>
	0x10000000	0x12351234
	0x10000004	0x12371236
	0x10000008	0x12391238
	0x1000000c	0x12551244
	0x10000010	0x12771277
	0x10000014	0x00006800




#Program 2:
### Statement:<write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:<lab3_64bit.s>

### Observation - Single Cycle
	<storing each 64bit numbers in RV32I as two (msb and lsb) 32bit number in two registers
	 adding the lsb and then adding msb along with the carry from adding lsb's >

### Register Mapping 
-**<Register Number used>:**<Value stored>
		x10		0x10000000
		x1		0xffe3345e			
		x2		0xfff677ff
		x3		0xfffffffe
		x4		0xffffffff
		x5		0xfff677fe
		x6		0x00000001
		x7		0xffe3345c
		x8		0xffe3345d
		x9		0x00000001

### Data Mapping
-**<Memory Address>:**<Value stored>
	0x10000000	0xffe3345e
	0x10000004	0xfff677ff
	0x10000008	0xfffffffe
	0x1000000c	0xffffffff
	0x10000010	0x00000001
	0x10000014	0xffe3345d
	0x10000018	0xfff677fe

