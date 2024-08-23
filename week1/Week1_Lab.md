# Program 1:
### Statement:<to add two words>
### Name of file:lab2word.s,lab2half.s,lab2byte.s

### Observation -Single Cycle
--<In this program we firat load the base address in register then load the 2 values in 2 registers .
   Add the two values and check for carry. store the result in a register and carry in a register  >

### Register Mapping
-**<Register number used>:**<Value stored (word)>  <value stored(half)>  <value stored(byte)>
      x11		     0x12345678		   0x00001234		  0x00000012		
      x12                    0x56781234		   0x00005678		  0x00000056
      x13		     0x68ac68ac		   0x000068ac		  0x00000068	
      x14		     0x00000000		   0x00000000		


### Data Mappping
--**< Mamory Address>:**<value stored(word)>		<value stored(half)>	<value stored(byte)>
	0x10000000	 0x12345678		 	  0x56781234		 0x00685612
	0x10000004	 0x56781234		 	  0x000068ac		 0x00000000
	0x10000008	 0x68ac68ac			  0x00000000	
	0x1000000c	 0x00000000


# Program 2:

### Statement:<to analyse the format of storing signed and unsigned numbers >
### Name of file:lab2uss.s

### Observation -Single Cycle
--<to take a single word .load the base addres in a register and load the value in required registers using lw,lh,lhu,lb,lbu commands.
 And store it as word ,signed halfword,unsigned halfword,signed byte,unsigned byte>

### Register Mapping
--**<Register number used>:**<Value stored>
	x10		      0x10000000
	x11		      0xfffffffe
	x12		      0xfffffffe
	x13		      0x0000fffe
	x14		      0xfffffffe
	x15                   0x000000fe
### Data Mapping
--**<Memory Address>:**<value stored>
       0x10000000	 0xfffffffe
       0x10000004	 0xfffffffe
       0x10000008	 0x0000fffe
       0x1000000c	 0x0000fffe
       0x10000010	 0x000000fe
       0x10000014	 0x000000fe
end

