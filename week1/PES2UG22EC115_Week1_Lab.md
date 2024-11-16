# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
PES2UG22EC115_Week1_Lab.s

### Observation - Single Cycle
- First we load the word data into register x11 using load word (lw). We define an iterating variable in x3 to know when to stop the loop. Using andi instruction to mask the MSB we obtain the least significant byte into register x12. 
- We shift the extracted value to the left by required amount to get it towards MSB position and shift the original nummber to the right by 8 bits to remove the already extracted byte.
- Using branch if not equal to zero we can stop the loop when iterating variable hits 0. Finally we do the final masking and addition to complete the reversal of bytes. We write back this value into another location in data memory to be able to compare little endian with big endian order of storing data.

### Observation - Single Cycle
- **Cycles:** 25
- **Frequency:** 10.53 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 33 
- **Frequency:** 6.49 Hz
- **CPI:** 1.32
- **IPC:** 0.758

### Register Mapping
- **x11:** 0x00000012  &ensp; Final value (Right Shifted in every iteration of loop)
- **x12:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Data Mapping
- **0x10000000:** 0x12345678  &ensp; Little Endian
- **0x10000004:** 0x78563412  &ensp; Big Endian

...



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
PES2UG22EC115_Week1_Lab.s

### Observation - Single Cycle
- Store the 64-bit (double word) numbers into 4 32-bit registers in the order of MSB1, LSB1, MSB2, LSB2.
- Load the LSB values of both numbers into 2 registers and add them. Check for carry using sltu instruction and store in another register. (sets value 1 if result value is greater  than either of the operands).
- Perform the same steps for MSB of both numbers. FInally add the carry to the sum of MSB values. Check for carry in MSB addition using sltu to check for overflow in addition.
- Result (MSB,LSB final value) is stored back into memory.

### Observation - Single Cycle
- **Cycles:** 13
- **Frequency:** 6.21 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 19 
- **Frequency:** 5.85 Hz
- **CPI:** 1.46
- **IPC:** 0.684
 
### Register Mapping
- **x2:**  0x10000000
- **x18:** 0x90000123
- **x19:** 0xffffffff
- **x20:** 0x90000122
- **x21:** 0x00000001
- **x22:** 0x80001234
- **x23:** 0x90001234
- **x24:** 0x10002468
- **x25:** 0x00000001
- **x26:** 0x10002469

### Data Mapping
- **0x10000000:** 0x80001234
- **0x10000004:** 0x90000123
- **0x10000008:** 0x90001234
- **0x1000000c:** 0xffffffff
- **0x10000014:** 0x90000122
- **0x10000018:** 0x10002469

...