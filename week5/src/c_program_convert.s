#Write an Assembly Program for the following C code:main() { unsigned short int a[11] = {0x1234, 0x5678, ...}; unsigned short int b[11] = {0x1234, 0x5678, ...}; unsigned short int c[11] = {0x1234, 0x5678, ...}; for(i = 0; i < 10; i++) { c[i] = a[i] * b[i] + c[i-1]; } } ```
.data
a: .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777
b: .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777
c: .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777

.text

main:
    la x5, a          # loading base address of array a,b,c
    la x6, b          
    la x7, c          

    addi x19,x0,0         # i = 0 
    addi x18,x0,10        # upper limit for the loop (10 iterations)

    li x8, 0          # Initialize c[i-1] to 0 for the first iteration

loop:
    beq x19, x18, exit # Exit the loop when i == 10

    lh x9, 0(x5)      # Load a[i] into x9
    lh x10, 0(x6)     # Load b[i] into x10
    mul x11, x9, x10  # x11 = a[i] * b[i]

    add x11, x11, x8  # x11 = a[i] * b[i] + c[i-1]

    sh x11, 0(x7)     # Store x11 into c[i]

    mv x8, x11        # x8 = c[i] (becomes c[i-1] in the next iteration)

    addi x5, x5, 2    # Increment address for a[i],b[i],c[i](2 bytes for .half)
    addi x6, x6, 2    
    addi x7, x7, 2 
    addi x19, x19, 1  # i++

    j loop            #loop starts again

exit:
    li x10, 10