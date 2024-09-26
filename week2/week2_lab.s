PROGRAM 2
.data
a:  .dword 0xABCDEF9898123490, 0x87651230BFEAC90D  # double word consisting of 64 bits 
.text
la    x10, a               # Load address of array 'a'
lw    x11, 0(x10)          # x11 = lower 32 bits of 1st number
lw    x12, 4(x10)          # x12 = upper 32 bits of 1st number
# Load lower 32 bits of the second 64-bit number
lw    x13, 8(x10)          # x13 = lower 32 bits of 2nd number
# Load upper 32 bits of the second 64-bit number
lw    x14, 12(x10)         # x14 = upper 32 bits of 2nd number
# Add lower 32 bits of both numbers
add   x15, x11, x13       # x15 = lower 32 bits sum
# carry generation is checked using this command
sltu  x16, x15, x11       # x16 = 1 if carry from lower bits
# Add upper 32 bits with carry
add   x17, x12, x14      
add   x18, x17, x16       # x18 = final upper 32 bits sum ( carry)
sw    x15, 16(x10)         
sw    x18, 20(x10)



PROGRAM 1
.data
a:  .half 0x1234
.half 0x5678        
.half 0x1678        
.half 0x2340        
.half 0x4987        
.half 0x4535        
.half 0x2025        
.half 0x7763        
.half 0x8976        
.half 0x1231      
.half 0x8751      
.text
la x5,a #load address is stored in x5
lh x6,0(x5)
lh x7,2(x5)
lh x8,4(x5)
lh x9,6(x5)
lh x10,8(x5)
lh x11,10(x5)
lh x12,12(x5)
lh x13,14(x5)
lh x14,16(x5)
lh x15,18(x5)
lh x16,20(x5)
add x20,x0,x6
add x20,x20,x7
add x20,x20,x8
add x20,x20,x9
add x20,x20,x10
add x20,x20,x11
add x20,x20,x12
add x20,x20,x13
add x20,x20,x14
add x20,x20,x15
sh x20,18(x5) 
