# Program 1: 
### Statement: > Write a assembly language program to verify wheher the given 8 bit number is 2 out of 5 code ? 
                 contions to satisfy 
                i) MSB 3 bits of the given num should be 0
               ii) Provided condition 1 is true , need to check No of 1's in least LSB 5 bits of the num 
                   if no of 1's = 2 then it is a 2 out of 5 code 
                   2 out of 5 code - 1 is stored in x20 
                   Not a 2 out of 5 code - 2 is stored in x20 

### Name of file: week4a.s

### Observation - Single Cycle>
     To satisfy 1st condition given num is masked using andi operation where msb 3 bit the num is restored 
     restored 3 msb bits are compared with x0 (always 0) using branch inst
     if first 3 msb aren't 0 then (1 st contion of 2 out 5 is not satisfied ) exit label is executed  
      
     For 2 nd condition we run a loop in which last 5 bits of the num is checked for no of 1's 
     restoring the last bit by andi operation and if result of the andi operation is zero then we move to the loop in which  logical right shift of the given num is done   
     counter reg is x13 decrements on loop 
      
### Register Mapping
    x20 = 0x00000001
    x25 = 0x00000002
    x26 = 0x00000002

### Data Mapping
     Address                  Value 
   0x10000000              0x00000012




# Program 2: 
### Statement: Write a program to swap the content of a two memory locations iff a[0]<a[1] 
               if (a[0]<a[1])
                  { 
                      temp = a[0];
                      a[0] = a[1] 
                      a[1] = temp 
                 }
                   
### Name of file: week4b.s 

### Observation - Single Cycle
    loading address of the data into reg 
    loading the values into reg
    branch instruction bgeu is used 
    then the values are swapped by store inst

### Register Mapping
         Register Number        Value stored
            x12                  0x0000003d
            x13                  0x0000007f
             
### Data Mapping
          Memory Address        Value stored
           0x10000000            0x00003d7f
           0x10000004            0x00000000



# Program 3: 
### Statement: Write a program to arrange the given array in ascending order using bubble sort algorithm
 
### Name of file:week4c.s

### Observation - Single Cycle
      The code has two nested loops (outer and inner loops) to compare adjacent elements in the array and swap them if they are in the wrong order
      The outer loop iterates from 0 to n-2, where n is the number of elements in the array. The inner loop iterates from 0 to n-1-i, where i is the current iteration of the outer loop.
      Inside the inner loop, the code compares the current element with the next element. If the current element is greater than the next element, it swaps their positions using the 'sw' (store word) instruction.
      After the nested loops complete, the array is sorted in ascending order, and the program exits.

### Register Mapping
     Register       Value stored
      x20              0x00000001
      x11              0x10000014
      x10              0x10000010
      x14              0x00000001
      x15              0x00000004
      x16              0x00000032
      
### Data Mapping
    Memory Address    Value stored
    0x10000014        0x00000005
    0x10000010        0x00000032
    0x1000000c        0x00000028
    0x10000008        0x0000001e
    0x10000004        0x00000014
    0x10000000        0x0000000a