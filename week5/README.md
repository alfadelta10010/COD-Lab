# Week 5 - Assembly Assignment

- Upload the two assembly programs written last lab class, in `.s` format. The problem statements are as follows:
	1. Write an assembly program to check whether a given number in an array of elements is divisible by 9
	2. Write an Assembly Program for the following C code:
	```c
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...};
	unsigned short int b[11] = {0x1234, 0x5678, ...};
	unsigned short int c[11] = {0x1234, 0x5678, ...};
	for(i = 0; i < 10; i++)
	{
		c[i] = a[i] * b[i] + c[i-1];
	}
}
	```
- Run the program with RIPES in Single Cycle and 5 stage w/ pipeline modes
- Take screenshots in processor view, with registers, CPI and IPC visible
- **Note**: Open a PR to submit

### What should be included in this folder:
- `program1.s`, `program2.s` files
- Screenshot of RIPES for each program, saved as `program1-5stage.png`, `program1-singlestage.png`, etc

:warning: **Deadline**: 11:59 PM, Sunday, 17th November, 2024
