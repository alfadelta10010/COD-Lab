.data                                     
n: .half 0x4321, 0x0001     # Define two 16-bit half-words at label 'n'
.text 
la x10,n                     # Load address of 'n' into x10                          
lh x5,0(x10)                  # Load the first half-word (0x1234) into x5                        
 lh x6,2(x10)                   # Load the second half-word (0x1212) into x6     
add x7,x5,x6                     # Add x5 and x6, store result in x7  
sh x7,4(x10)
