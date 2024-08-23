# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
add2words.s

### Observation - Single Cycle

1. **Loading Words**: The code loads two 32-bit words from memory at the address labeled `a`. The first word (`0x80000004`) is loaded into register `x2`, and the second word (`0x9123456B`) is loaded into register `x3`.

2. **Adding Words**: The code adds the values stored in registers `x2` and `x3` together and stores the result in register `x4`.

3. **Storing the Result**: The code stores the result of the addition from register `x4` back into memory at the address `a + 8`, which is immediately after the original two words.
### Register Mapping
x1:0x10000000
x2:0x80000004
x3:0x9123456b
x4:0x1123456f

### Data Mapping
0x00000000:0x10000097
0x00000004:0x00008093
0x00000008:0x0000a103
0x0000000c:0x0040a183
0x00000010:0x00218233
0x00000014:0x0040a423
0x00000018:0x00000000

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
addhalf.s

### Observation - Single Cycle

1. **Loading the Address and Halfwords**: The program starts by loading the address of the data label `a` into register `x1` using the `la` instruction. It then loads the first halfword (`0x0004`) at the address stored in `x1` into register `x2` and the second halfword (`0x456C`) at the address `x1 + 2` into register `x3` using the `lh` (load halfword) instructions.

2. **Adding the Halfwords**: The program adds the values in registers `x2` and `x3` together using the `add` instruction, storing the result in register `x4`. This involves adding `0x0004` (4 in decimal) and `0x456C` (17772 in decimal), resulting in `0x4570` (17776 in decimal).

3. **Storing the Result**: Finally, the program stores the result (`0x4570`) from register `x4` back into memory at the address `x1 + 4` using the `sh` (store halfword) instruction. This means the result is stored in the memory location immediately following the original two halfwords.
 
### Register Mapping
x1:0x10000000
x2:0x00000004
x3:0x0000456c
x4:0x00004570

### Data Mapping
0x00000000:0x10000097
0x00000004:0x00008093
0x00000008:0x00009103
0x0000000c:0x00409183
0x00000010:0x00218233
0x00000014:0x00409223
0x00000018:0x00000000

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
add2bytes.s

### Observation - Single Cycle
1. **Loading the Address and Bytes**: The program begins by loading the address of the data label `a` into register `x1` using the `la` instruction. Then, it loads the first byte (`0x04`) at the address stored in `x1` into register `x2` and the second byte (`0x6B`) into register `x3` using the `lb` (load byte) instructions.

2. **Adding the Bytes**: The program then adds the values in registers `x2` and `x3` together using the `add` instruction, storing the result in register `x4`. 

3. **Storing the Result**: Finally, the program stores the result (`0x6F`) from register `x4` back into memory at the address `x1 + 2` using the `sb` (store byte) instruction. This means the result is stored in the memory location immediately following the original bytes (`0x04` and `0x6B`).
 
 
### Register Mapping
x1:0x10000000
x2:0x00000004
x3:0x0000006b
x4:0x0000006f

### Data Mapping
0x00000000:0x10000097
0x00000004:0x00008093
0x00000008:0x00008103
0x0000000c:0x00108183
0x00000010:0x00218233
0x00000014:0x00408123
0x00000018:0x00000000

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
addformatanalysis.s

### Observation - Single Cycle

1. **Word Operations**: The code loads two 32-bit words from the memory label `a`, adds them together, and stores the result in the memory location following these two words.

2. **Halfword Operations**: The code loads two 16-bit halfwords from the memory label `b`, adds them together, and stores the result in the memory location following these two halfwords.

3. **Byte Operations**: The code loads two 8-bit bytes from the memory label `c`, adds them together, and stores the result in the memory location following these two bytes.
 
### Register Mapping
x1:0x1000000c
x2:0xffffff92
x3:0x00000056
x4:0xffffffe8

### Data Mapping
0x00000000:0x10000097
0x00000004:0x00008093
0x00000008:0x0000a103
0x0000000c:0x0040a183
0x00000010:0x00218233
0x00000014:0x0040a423
0x00000018:0x10000097
0x0000001c:0xff008093
0x00000020:0x00009103
0x00000024:0x00209183
0x00000028:0x00218233
0x0000002c:0x00409223
0x00000030:0x10000097
0x00000034:0xfdc08093
0x00000038:0x00008103
0x0000003c:0x00108183
0x00000040:0x00218223
0x00000044:0x00408123
0x00000048:0x00000000






