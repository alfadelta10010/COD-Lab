# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
add_words.s

### Observation - Single Cycle
- Loads two words from memory.
- Adds the two words and stores the result in a register.
- Stores the result back in memory.

### Register Mapping
- *x1:* Address of 'a'
- *x2:* First word from 'a'
- *x3:* Second word from 'a'
- *x4:* Result of the addition

### Data Mapping
- *0x80000002:* First Word
- *0x9123456A:* Second Word
- *Result stored at address a+8*

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
add_halfwords.s

### Observation - Single Cycle
- Loads two half words from memory.
- Adds the two half words and stores the result in a register.
- Stores the result back in memory.

### Register Mapping
- *x1:* Address of 'a'
- *x2:* First half-word from 'a'
- *x3:* Second half-word from 'a'
- *x4:* Result of the addition

### Data Mapping
- *0x0002:* First Half Word
- *0x456A:* Second Half Word
- *Result stored at address a+4*

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
add_bytes.s

### Observation - Single Cycle
- Loads two bytes from memory.
- Adds the two bytes and stores the result in a register.
- Stores the result back in memory.

### Register Mapping
- *x1:* Address of 'a'
- *x2:* First byte from 'a'
- *x3:* Second byte from 'a'
- *x4:* Result of the addition

### Data Mapping
- *0x02:* First Byte
- *0x6A:* Second Byte
- *Result stored at address a+2*

# Program 4: 
### Statement: Write an Assembly Program and analyze the format of storing signed and unsigned words, half words, and byte data types

### Name of file:
data_format_analysis.s

### Observation - Single Cycle
- Loads signed words, half-words, and bytes from memory.
- Adds them and stores the results in memory.

### Register Mapping
- *x1:* Address of 'a', 'b', 'c'
- *x2:* Signed/Unsigned Word Value
- *x3:* Signed/Unsigned Half-Word Value
- *x4:* Signed/Unsigned Byte Value

### Data Mapping
- *Signed Word at a+8*: Result of adding the two words.
- *Signed Half-Word at b+4*: Result of adding the two half-words.
- *Signed Byte at c+2*: Result of adding the two bytes.
