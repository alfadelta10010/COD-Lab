# Week 1 Lab Assignment

## Program 1: Addition of 2 Words

### Statement:
Write an Assembly Program for the addition of 2 words.

### Name of file:
`addition_words.s`

### Observation - Single Cycle
- The program loads two 32-bit word values from memory into registers.
- It performs the addition of these two values.
- The result is stored in a third register and then written back to memory.

### Register Mapping
- **Register 1 (rs1):** Value of the first word
- **Register 2 (rs2):** Value of the second word
- **Register 3 (rd):** Result of the addition

### Data Mapping
- **Memory Address 0x1000:** Value of the first word
- **Memory Address 0x1004:** Value of the second word
- **Memory Address 0x1008:** Result of the addition

---

## Program 2: Addition of 2 Half Words

### Statement:
Write an Assembly Program for the addition of 2 half words.

### Name of file:
`addition_half_words.s`

### Observation - Single Cycle
- The program loads two 16-bit half-word values from memory into registers.
- It performs the addition of these two values.
- The result is stored in a third register and then written back to memory.

### Register Mapping
- **Register 1 (rs1):** Value of the first half word
- **Register 2 (rs2):** Value of the second half word
- **Register 3 (rd):** Result of the addition

### Data Mapping
- **Memory Address 0x2000:** Value of the first half word
- **Memory Address 0x2002:** Value of the second half word
- **Memory Address 0x2004:** Result of the addition

---

## Program 3: Addition of 2 Bytes

### Statement:
Write an Assembly Program for the addition of 2 bytes.

### Name of file:
`addition_bytes.s`

### Observation - Single Cycle
- The program loads two 8-bit byte values from memory into registers.
- It performs the addition of these two values.
- The result is stored in a third register and then written back to memory.

### Register Mapping
- **Register 1 (rs1):** Value of the first byte
- **Register 2 (rs2):** Value of the second byte
- **Register 3 (rd):** Result of the addition

### Data Mapping
- **Memory Address 0x3000:** Value of the first byte
- **Memory Address 0x3001:** Value of the second byte
- **Memory Address 0x3002:** Result of the addition

---

## Program 4: Storing and Analyzing Signed and Unsigned Words, Half Words, and Bytes

### Statement:
Write an Assembly Program and analyze the format of storing signed and unsigned words, half words, and byte data types.

### Name of file:
`store_and_analyze_data.s`

### Observation - Single Cycle
- The program demonstrates how signed and unsigned integers of various sizes are stored in memory.
- It loads and stores signed and unsigned values in registers and memory.
- It also includes comments on how data representation affects storage and retrieval.

### Register Mapping
- **Register 1 (rs1):** Value of the signed word
- **Register 2 (rs2):** Value of the unsigned word
- **Register 3 (rd):** Value of the signed half word
- **Register 4 (rd2):** Value of the unsigned half word
- **Register 5 (rd3):** Value of the signed byte
- **Register 6 (rd4):** Value of the unsigned byte

### Data Mapping
- **Memory Address 0x4000:** Signed word value
- **Memory Address 0x4004:** Unsigned word value
- **Memory Address 0x4008:** Signed half word value
- **Memory Address 0x400A:** Unsigned half word value
- **Memory Address 0x400C:** Signed byte value
- **Memory Address 0x400D:** Unsigned byte value
