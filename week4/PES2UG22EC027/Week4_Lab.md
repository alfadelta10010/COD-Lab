# Program 1: 
### Statement: check if given data is in 2 out of 5 form

### Name of file:
COD-Lab/week4/PES2UG22EC027/2_outof_5.s

### Observation - Single Cycle
- Data is loaded to x2
- x4 is a constant with 00100000, to check if MSB's 3 bits are 0 by using less than
- In loop  data is anded with 01 and result is added to x6
- x2 is compared to 0 to check if it has completely shifted right
- Number of 1 is compared with 0x02 to check if condition is satisfied based on which x20 is true 
  or false 
### Register Mapping
- x1 0x1000 0000
  x2 0x0000 0000
  x4 0x0000 0002
  x5 0x0000 0001
  x6 0x0000 0002
  x20 0x0000 0001

### Data Mapping
- 0x1000 0000 - 0x0000 0012
...

# Program 2: 
### Statement: Swap the content of 2 memory locations if a[0]<a[1]

### Name of file:
/COD-Lab/week4/PES2UG22EC027/swap_memory_1_2.s

### Observation - Single Cycle
- Data is loaded to x7,x7
- if x6 is greater than x7 -> exit
- else directly use store to swap data in memory 
### Register Mapping
- x1 0x1000 0000
  x6 0x0000 0001
  x7 0x0000 0002

### Data Mapping
- 0x1000 0000 - 0x0000 0102    #byte 0 =  0x02, byte 1 = 0x01 after sort
...


# Program 3: 
### Statement: Implement bubble sort Algorithm

### Name of file:
/COD-Lab/week4/PES2UG22EC027/bubblesort.s

### Observation - Single Cycle
- Address is loaded into x1,x2 so that physical address still remains and x2 can be altered
- x8 is initialized to number of elements in array 
- x2,x8 are equal thats if it has iterated 6 times and its going to compare last element with 
  unused data bytes and swap therefore -> exit
- byte is loaded into temporary registers t0 t1 and compared
- if t0 is greater than t1 swap is done and x2 is incremented by 1 to access next element
- t2 is a register which stores number of swaps done. if t2 is 0 then the array is sorted 
- if swap condition is not satisfied x2 is incremented and, x2 x8 are compared to find if there 
  are more iterations left to do.
- if t2 = 0 no swaps therefore ->exit
- if both are not satisfied then there might be more swaps left so t2 and x2 are reset, next 
  set of iterations start
### Register Mapping
- x1 0x1000 0000
  x2 0x1000 0006
  x5 0x0000 0006  #t0
  x6 0x0000 0008  #t1
  x7 0x0000 0000  #t2
  x8 0x1000 0006

### Data Mapping
- 0x1000 0004 - 0x00080604
- 0x1000 0000 - 0x03020100
# initial data a:.byte 0x00,0x01,0x04,0x02,0x03,0x06,0x08
...
