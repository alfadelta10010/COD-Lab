# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly 
### Name of file: littlebigedian.s
week2q2.s

### Observation - Single Cycle
we have array a and b , instruction loads the address of arrays a and b into registers x10,x11.Loads word from memory address in x10 and x11 into x13 and x12,on performing shift-left logic on x12 and stores in x14.AND operation between x13 and x14, storing result in x15.

### Register Mapping
- *<Register Number Used>:* <Value stored>
x10= 0x10000000
x11= 0x10000004
x12= 0x000000FF
x13= 0x12345678
x14= 0x12345678
x15= 0x00005600

### Data Mapping
- *<Memory Address>:* <Value stored>
    0:        10000517    
    4:        00050513        
    8:        10000597        
    c:        ffc58593            
    10:        0005a603        
    14:        00052683        
    18:        00861713        
    1c:        00e6f7b3        
