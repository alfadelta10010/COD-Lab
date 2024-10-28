# Week 2 - Assignment

- Upload the three assembly programs written last lab class, in `.s` format. The problem statements are as follows:
	1. Write an Assembly Program for the following C code:
```c
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}
```
	2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

- Ensure your code has comments for the statements
- While submitting, you are required to make a Markdown file with the following contents. You are required to submit your observations in the same manner

- File name: Week2_Lab.md
```markdown
# Program 1: 
### Statement: <Enter the program statement>

### Name of file:
<Enter the name of the file where your code is stored>

### Observation - Single Cycle
- <Write 3 statements explaining what the assembly program is doing>
 
### Register Mapping
- **<Register Number Used>:** <Value stored>

### Data Mapping
- **<Memory Address>:** <Value stored>

...
```
- Repeat the above layout structure for each program, in the same file

- **Note**: Open a PR to submit
:warning: **Deadline**: 11:59 PM, Saturday, 24th August, 2024
