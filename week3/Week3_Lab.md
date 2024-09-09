### Program 1:
### statement:<Convert a 32-bit value from Litle Endian to Big Endian>

### Name of file:<labltoe.s>

### Observation - Single Cycle
	<this programe is to convert the litle endian form of 32-bit data to big endian>

### Register Mapping
-**<Register Number used >:**<Value stored> 
	x1			0x12345678
	x2			0x00000020
	x3			0xfffffff8
	x4			0x00000004
	x5			0x00000004
	x6			0x00000012
	x7			0x00000012
	x8			0x78563412
	x10			0x10000000


### Data Mapping
-**<Memory Address>:**<Value stored>
     0x10000000		0x12345678
     0x10000004		0x78563412
