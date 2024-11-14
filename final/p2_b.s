.text
addi x10, x10, 6 # y
addi x11, x11, 5 # m
addi x12, x12, 4 # l
addi x13, x13, 3 # d
addi x14, x14, 2 # z
addi x15, x15, 1 # c

add x20, x10, x11 # y + m
sub x21, x12, x13 # l - d
add x22, x14, x15 # z + c
sub x23, x20, x21 # (y + m) - (l - d)
sub x24, x23, x22 # (y + m) - (l - d) - (z + c)
sub x25, x24, x13 # (y + m) - (l - d) - (z + c) - d = x
