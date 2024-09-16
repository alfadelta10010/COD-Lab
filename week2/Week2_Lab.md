Program 1:
Statement:
Write an Assembly Program to sum the first 10 elements of an array and store the sum in the 11th element.
main() {
    unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
    h = 0;
    for(i = 0; i < 10; i++)
    {
        h = h + a[i];
    }
    a[10] = h;
}
Name of file:
Program1_week2.s

Observation - Single Cycle:
The program loads each 16-bit element of an array into a register.
It accumulates the sum of the first 10 elements in a register (t0).
The final sum is stored back in the 11th element of the array.
Register Mapping:
x10 (a): Base address of the array.
t0: Stores the accumulated sum (h).
t1: Temporarily holds each element of the array during addition.
Data Mapping:
Memory Address of a[10]: Stores the sum of the first 10 elements of the array.
Array a:
a[0] = 0x1234
a[1] = 0x5678
a[2] = 0x0000
a[3] = 0x0000
a[4] = 0x0000
a[5] = 0x0000
a[6] = 0x0000
a[7] = 0x0000
a[8] = 0x0000
a[9] = 0x0000
a[10] = Sum of a[0] to a[9]
Program 2:
Statement:
Write an Assembly Program for the addition of two 64-bit numbers using RV32I, and store the results in memory.

Name of file:
Program2_week2.s

Observation - Single Cycle:
The program loads two 64-bit numbers from memory as four 32-bit parts.
It performs the addition of the lower and upper 32-bit parts separately, accounting for carry between the two.
The result is stored back into memory, along with any carry that results from the addition.
Register Mapping:
x9: Lower 32 bits of the first 64-bit number.
x8: Upper 32 bits of the first 64-bit number.
x7: Lower 32 bits of the second 64-bit number.
x6: Upper 32 bits of the second 64-bit number.
x5: Holds the result of the lower 32-bit addition.
x3: Holds the result of the upper 32-bit addition.
x11: Temporarily holds the carry from the lower 32-bit addition.
Data Mapping:
Memory Address of a+16: Stores the result of the lower 32-bit addition.
Memory Address of a+20: Stores the result of the upper 32-bit addition.
Memory Address of a+24: Stores the carry from the upper 32-bit addition.
