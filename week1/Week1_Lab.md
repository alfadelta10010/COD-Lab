# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
assign1

### Observation - Single Cycle
- The code is loading the address of the variable storing the words.
- Then it loads the words into registers.
- It then adds the words and stores it in the final register.
 
### Register Mapping
- x10 - 0x10000000
- x11 - 0x59632488
- x12 - 0x00622200
- x13 - 0x59c54688

### Data Mapping
- 0x10000008 - 0x59c54688
- 0x10000004 - 0x00622200
- 0x10000000 - 0x59632488
