# Program 1: 
### Statement: <Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly>

### Name of file:
<big_little_endian.s>

### Observation - Single Cycle
- <First an example data '0x12345678 is stored in register>
- <Next last 2 lsb values are extracted and added with the final register which consists of big endian represented dat, and the same process continues for 3 more times.>
- <The final value is stored in the memory.>
### Register Mapping
- **<X1>:** <0x12345678>
- **<X2>:** <0x000000FF>
- **<X3>:** <0x00000078/0x00005600/0x00340000/0x12000000>
- **<X5>:** <0x00000078/56/34/12>
- **<X4>:** <0x78563412>

### Data Mapping
- **<0x1000000>:** <0x12345678>
- **<0x1000004>:** <0x78563412>


...
