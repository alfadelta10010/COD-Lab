.data
a:    .half 0x8083, 0x0712

.text
la x10, a 

lh x11, 0(x10) # Stores a signed number by default to preserve sign (sign extension)
lh x12, 2(x10)

# lb x11, 0(x10) # Same thing happens with bytes too
# lb x12, 1(x10)

# lw x11, 0(x10) # For full length words, it doesn't matter because there's no space for sign extension
# lw x12, 4(x10)

# lhu x11, 0(x10) # Unsigned data type is forced hence no sign extension
# lhu x12, 2(x10)

add x13, x11, x12

sw x13, 4(x10)