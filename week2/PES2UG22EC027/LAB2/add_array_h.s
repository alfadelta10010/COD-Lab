#Write an Assembly Program for the following C code:
#main() {
#	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
#	h = 0;
#	for(i = 0; i < 10; i++)
#	{
#		h = h + a[i];
#	}
#	a[10] = h;
#}
.data
a:.half 0x0001,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x00
h:.half 0x0000
.text
la x1,a
la x2,h
#x3 = a & x4 = h
#a[0]
lh x3,0x00(x1)
lh x4,0x00(x2)
add x4,x4,x3

#a[1]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[2]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[3]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[4]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[5]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[6]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[7]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[8]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[9]
addi x1,x1,0x02
lh x3,0x00(x1)
add x4,x4,x3

#a[10]
sh x4,0x02(x1)