# Program 1: i
### Statement: < write a program to add 1 and -3, assume they are 8 bit signed numbers >

### Name of file:
<prgram_1.s>

### Observation - Single Cycle
- la: Loads the base address of the array a into register x10.
- lb: Loads a signed 8-bit byte from memory into a register (x11 and x12). The bytes at offsets 0 and 1 are loaded into x11 and x12, respectively.
- add: Adds the two signed 8-bit numbers from x11 and x12, storing the result in x13.
- sb: Stores the 8-bit result from x13 back into memory at the specified offset (2 in this case).
 
### Register Mapping
- <x10>:<0x10000000>
  <x11>:<0xfffffffd> 
  <x12>:<0x00000001>
  <x13>:<0xfffffffe>
### Data Mapping
- <0x10000004>: <0x00000000>
  <0x10000000>: <0x00fe01fd>

----------------------------------------------------------------------------
 
### Statement: < wap for addition of half words >

### Name of file:
<prgram_2.s>

### Observation - Single Cycle
- la: Loads the base address of the array n into register x15.
- lhu: Loads a 16-bit halfword from memory into a register as an unsigned value. The values from offsets 0 and 2 are loaded into x16 and x17, respectively.
- add: Adds the two unsigned numbers in x16 and x17, storing the result in x18.
- sh: Stores the 16-bit result from x18 back into memory at the specified offset (4 in this case).

### Register Mapping
- <x15>:<0x10000000>
  <x16>:<0x000000fd> 
  <x17>:<0x00000001>
  <x18>:<0x000000fe>
### Data Mapping
- <0x10000004>: <0x000100fd>
  <0x10000000>: <0x000000fe>


----------------------------------------------------------------------------
 
### Statement: < write a program to add two words, 0x80000002 and 0x9123456A >

### Name of file:
<program_3.s>

### Observation - Single Cycle
- la: Loads the base address of the array t into a register (x19).
- lw: Loads 32-bit words from memory into registers (x20 and x21).
- add: Adds the two 32-bit numbers in x20 and x21, result stored in x23.
- sw: Stores the result of the addition (x23) back into the memory.
- sltu: Performs an unsigned comparison between x23 and x21 and sets x24 to 1 if x23 is less than x21.

### Register Mapping
- <x19>:<0x10000000>
  <x20>:<0x80000002> 
  <x21>:<0x9123456a>
  <x23>:<0x1123456c>
  <x24>:<0x00000001>
### Data Mapping
- <0x10000008>: <0x1123456c>
  <0x10000004>: <0x9123456a>
  <0x10000000>: <0x80000002>

----------------------------------------------------------------------------

### Statement: write a program to analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
<program_4.s>

### Observation - Single Cycle
 - .data block is used to store the required values in memory
  "la" is used to load the address a to register x15
   lh is used to load the array elements, and add is used to perform the ope   ration
   when we load a signed word, sign extension is automatically performed
   when lhu is used instead, sign extension is not performed
   the same logic extends to byte-sized data
   sw is used to store the result (stored in x18) back into memory
 
#### Register Mapping
- <x15>: <0x10000000>

# lh
- <x18>: <0xffff80fd>
- <x16>: <0xffff8001>
- <x17>: <0xffff00fe>

# lhu
- <x18>: <0x000080fd>
- <x16>: <0x00008001>
- <x17>: <0x000100fe>

### Data Mapping
- <0x10000000>: <0x800180fd> (two half words stored in one location)
- <0x10000004>: <0x000100fe>
  


























