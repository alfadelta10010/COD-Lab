.data
a:    .byte 0x0

.text

# Making the array :(Forgive my brain)
la x10, a
addi x20, x20, 3 # register
addi x21, x21, 16 # register
addi x22, x22, 0xde
addi x23, x23, 0xf0

rst:
	addi x11, x0, 0x12
	j make_loop
last:
	slli x11, x11, 8
	addi x11, x11, 0xf0
store:
	andi x12, x11, 0xff
	beq x12, x22, last
	sw x11, 0(x10)
	addi x10, x10, 4
	addi x20, x20, 3
	beq x23, x12, rst
make_loop:
	andi x12, x11, 0xff
	addi x12, x12, 0x22
	slli x11, x11, 8
	add x11, x11, x12

	addi x20, x20, -1 # increment
	addi x21, x21, -1 # increment
	beqz x20, store
	bgez x21, make_loop

# Adding the array  :
    
la x10, a
add x11, x0, x0
add x12, x0, x0
addi x20, x0, 10
add_loop:
    lhu x12, 0(x10)
	add x11, x11, x12

	addi x10, x10, 2
	addi x20, x20, -1
	bnez x20, add_loop
exit:
