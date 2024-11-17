# Program 1: 
### Statement:Assembly program to check if a number is a 2 out of 5 number

### Name of file:
program1.s

### Observation - Explanation
- loads the given number into a register and shifts it right by three times as we are only interested in the most significant 5 bits
- if the first three bits has one, then directly declare it's not a two out of five code. If it s all zeroes, moves to the next five msb
-checks each bit and increments a counter value by one whenever one is encountered. At the end of the fifth iteration if the counter 
  register has two, then x20 is loaded with 1 if not then it is loaded with 2



### Snapshot
![Screenshot of RIPES window]()


