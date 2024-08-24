.data
a:.word 0x00056789
b:.half 0x6789
c:.byte 0x67

.text
 la x8,a
 la x9,b
 la x10,c
 
 lw x11,0(x8) # loading word
 
 lh x12,0(x9) #loading signed halfword
 lhu x13,2(x9) #loading unsigned half word
 
 lb x14,0(x10) #loading signed byte
 lbu x15,1(x10) #loading unsigned byte
  
 sw x11,4(x8) #storing word
 
 sh x12,4(x9) #storing halfword

 sb x13,2(x10) #storing byte
