.data
a: .word 0x00001234, 0x12055a3, 0x00345644, 0x12000221, 0x45001245, 0x009882333, 
.text
la x10, a
lw x11, 0(x10) # y
lw x12, 4(x10) # m
lw x13, 8(x10) # L
lw x14, 12(x10) # D
lw x15, 16(x10) # z
lw x16, 20(x10) # C

add x17, x11, x12 # y+m
sub x18, x13, x14 # L-D
add x19, x15, x16 # Z+C
sub x19, x19, x14 # (Z+C)-D
add x20, x18, x19 # (L-D)+(Z+C)-D
add x21, x20, x19 # (y+m)+(L-D)+(Z+C)-D