#Write an Assembly Program for the following C code

#C-code
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}

#Assemblycode

.data
a: .half 0x1234,0x5678

.text
la x10,a
addi x13,x0,0
addi x12,x0,0
addi x11,x0,5
back: lhu x20,0(x10)
add x12,x12,x20
addi x10,x10,2
addi x13,x13,1
bltu x13,x11,back
sw x12,16(x10)




2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 


.data
a: .word 0x12345678  #lower num1
b: .word 0x29393739  #upper num1
c: .word 0x13753293  #lower num2
d: .word 0x36396494  #upper num2

result_lower: .word 0x00000000
result_upper: .word 0x00000000
.text

    la x10,a
    lw x11,0(x10)  #x11=a
    la x10,b
    lw x12,0(x10)  #x12=b
    la x13,c
    lw x14,0(x13)  #x14=c
    la x12,d
    lw x15,0(x13)  #x15=d
    
    add x16,x11,x14  #x16=a+c
    sltu x17,x16,x11
    add x18 ,x12,x15  #x18=b+d
    add x19,x18,x17
    la x20,result_lower  
    sw x16,0(x20)        #Store lower 32 bits (x16) into result_lower
    la x21,result_upper  
    sw x18,0(x21)        #Store upper 32 bits (x18) into result_upper
    
