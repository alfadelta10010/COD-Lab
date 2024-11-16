# Program 1a: 
### Statement: Add two 32-bit words from memory and store the result in another memory location.

### Name of file:
program1a.s

### Observation - Explanation
- Loads two 32-bit words (`0x12345678` each) from memory into registers.
- Adds the two words together.
- Stores the result (`0x2468ACF0`) into the memory location `b`.



### Snapshot
![code](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171145.png)
![register_file](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171203.png)
![memeory](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171215.png)

---

# Program 1b: 
### Statement: Add two 16-bit halfwords from memory and store the result in another memory location.

### Name of file:
program1b.s

### Observation - Explanation
- Loads two 16-bit halfwords (`0x1234` each) from memory into registers.
- Adds the two halfwords together.
- Stores the result (`0x2468`) into the memory location `b`.


### Snapshot
![code](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171236.png)
![register_file](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171247.png)
![memeory](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171255.png)

---

# Program 1c: 
### Statement: Add two 8-bit bytes from memory and store the result in another memory location.

### Name of file:
program1c.s

### Observation - Explanation
- Loads two 8-bit bytes (`0x12` each) from memory into registers.
- Adds the two bytes together.
- Stores the result (`0x24`) into the memory location `b`.



### Snapshot
![code](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171316.png)
![register_file](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171325.png)
![memeory](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171333.png)

---

# Program 2: 
### Statement: Perform a complex arithmetic operation using multiple 32-bit words and store the result.

### Name of file:
program2.s

### Observation - Explanation
- Loads six 32-bit words (`y`, `m`, `L`, `D`, `Z`, and `C`) from memory into registers.
- Performs arithmetic operations:
  1. Adds `y` and `m`.
  2. Subtracts `D` from `L`.
  3. Adds `Z` and `C`.
  4. Combines the results using addition and subtraction.
- Stores the final result in `x`.


### Snapshot
![code](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171355.png)
![register_file](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171409.png)
![memeory](https://github.com/ChethanReddyGN/COD-Lab/blob/c35657739111ad4b4aaa398d44717d3fde6147c5/week2/Screenshot%202024-11-16%20171425.png)
