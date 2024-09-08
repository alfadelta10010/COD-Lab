# Program 1: 
### Statement:
Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
### Name of file:
little_endian_to_big_endian.s
### Observation - Single Cycle
In this code we have 2 counters,they are a program counter &  a reverse counter which we start at 24.
We use a for loop here.
First we mask the number and take the required bytes to the lsb.
Then we shift them by the required number to the msb.
We add the values to a register.
All counters are updated.
When the program counter becomes equal to the number of times it needs to be updated the code exits the loop. 
### Register Mapping
- **<Register Number Used>:** <Value stored>
-	x10			0x10000000
-	x11			0x00000000
-	x12			0x00000012
-	x13			0x00000012
-	x14			0x78563412
-	x20			0x00000004
-	x21			0x00000004
-	x22			0xfffffff8
### Data Mapping
- **<Memory Address>:** <Value stored>
-	0x10000004	0x78563412	0x12	0x34	0x56	0x78
-	0x1000000	0x12345678	0x78	0x56 	0x34	0x12
