# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1_lab.s

### Observation - Single Cycle
-The program performs a 32-bit integer addition between two word-sized operands located in source registers.
-The sum is computed and stored in a specified destination register, ensuring proper overflow handling if necessary.
-This operation demonstrates how 32-bit arithmetic is executed at the register level within a single processor cycle.
 
### Register Mapping
- **x11:** 0x00000004
- **x12:** 0x00000008
- **x13:** 0x0000000C

### Data Mapping
- **0x10010000:** 0x00000004
- **0x10010004:** 0x00000008 
- **0x10010008:** 0x0000000C 



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1_lab.s

### Observation - Single Cycle
- The program executes a 16-bit integer addition between two half-word operands, stored in registers.
- The result of the addition is stored in the destination register, with attention to potential carry bits that might occur due to limited data size.
- This illustrates 16-bit arithmetic operations within the architecture, optimizing for smaller data operations.

### Register Mapping
- **x11:** 0x00000002
- **x12:** 0x00000003
- **x13:** 0x00000005

### Data Mapping
- **0x10010000:** 0x0002
- **0x10010004:** 0x0003 
- **0x10010008:** 0x0005 



# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1_lab.s.s

### Observation - Single Cycle
- The program carries out an 8-bit integer addition between two byte-sized operands stored in registers.
- The result is placed in a destination register, showcasing efficient manipulation of small data types within the processor.
- This operation is critical for tasks requiring fine-grained data processing, such as in embedded systems.

### Register Mapping
- **x11:** 0x01
- **x12:** 0x02
- **x13:** 0x03

### Data Mapping
- **0x10010000:** 0x01 
- **0x10010004:** 0x02 
- **0x10010008:** 0x03



# Program 4:
### Statement: Write an Assembly Program and analyze the format of storing signed and unsigned words, half words, and byte data types

### Name of file:
week1_lab.s

### Observation - Single Cycle
- The program stores and retrieves signed and unsigned data types of varying sizes (words, half-words, bytes) in memory, analyzing how each is represented in memory.
- Signed values are stored in two's complement form, while unsigned values use direct binary representation.
- The program demonstrates the impact of data size and sign representation on arithmetic operations and memory utilization.

### Register Mapping
- **x11** 0xFFFFFFFC 
- **x12:** 0x00000004 
- **x13:** 0xFFFE 
- **x14:** 0x0002
- **x15:** 0xFF 
- **x16:** 0x01 

### Data Mapping
- **0x10010000:** 0xFFFFFFFC 
- **0x10010004:** 0x00000004 
- **0x10010008:** 0xFFFE
- **0x1001000C:** 0x0002
- **M0x10010010:** 0xFF
- **0x10010014:** 0x01 
