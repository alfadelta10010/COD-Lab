.data
a:.word 0x00012345
b:.half 0x1234
c:.byte 0x12

.text
 la x20,a
 la x21,b
 la x22,c
 
 lw x11,0(x20) # loading word
 
 lh x12,0(x21) #loading signed halfword
 lhu x13,2(x21) #loading unsigned half word
 
 lb x14,0(x22) #loading signed byte
 lbu x15,1(x22) #loading unsigned byte
  
 sw x11,4(x20) #storing word
 
 sh x12,4(x21) #storing halfword

 sb x13,2(x22) #storing byte