#Write an Assembly Program for the following C code:
#main() {
#	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
#	h = 0;
#	for(i = 0; i < 10; i++)
#	{
#		h = h + a[i];
#	}
#	a[10] = h;
# }
.data
a: .half,0x11,0x22,0x33,0x44,0x55
b: .half,0x32,0x34,0x35,0x36,0x37
c: .half,0,0,0,0,0
.text
la x10,a 
la x11,b 
la x12,c 
lh x13,0(x10) 
lh x14,0(x11)
add x15,x13,x14 
sh x15,0(x12)
lh x13,4(x10)
lh x14,4(x11)
add x15,x13,x14
sh x15,4(x12)
lh x13,8(x10)
lh x14,8(x11)
add x15,x13,x14
sh x15,8(x12)
lh x13,12(x10)
lh x14,12(x11)
add x15,x13,x14
sh x15,12(x12)
lh x13,16(x10)
lh x14,16(x11)
add x15,x13,x14
sh x15,16(x12)