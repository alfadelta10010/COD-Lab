# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly 

### Name of file:
bigendian.s

### Observation - Single Cycle
- It basically windows the most significant bytes and extracts them
- It is then placed into the least target memory
- This is repeated by left shifting the source memory and right shifting the target memory
 
### Register Mapping
- **:** <Value stored>

### Data Mapping
- **<Memory Address>:** <Value stored>

