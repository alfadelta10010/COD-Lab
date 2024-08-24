# Program 1: 
Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}

### Name of file:
week_2.md
 .data
a:  .half 0x1234, 0x5678, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000  # Array 'a' with 11 elements

    .text
    la x5, a           
    li x6, 0          
    li x7, 0           

    slli x8, x7, 1     
    add x8, x5, x8      
    lh x9, 0(x8)       
    add x6, x6, x9      # h = h + a[i] 
    addi x7, x7, 1  
    slli x8, x7, 1      
    add x8, x5, x8




    # Program 
2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
week_2.md
