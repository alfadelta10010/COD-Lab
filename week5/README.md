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

- Ensure your code has comments for the statements
- While submitting, you are required to make a Markdown file with the following contents. You are required to submit your observations in the same manner

- File name: `<SRN>_Week5_Lab.md` (eg: `PES2UG21EC003_Week5_Lab.md`)
```markdown
# Program 1: 
### Statement: <Enter the program statement>

### Name of file:
<Enter the name of the file>

### Observation - Explanation
- <Write 3 statements explaining what the assembly program is doing>

### Observation - Single Cycle
- **Cycles:** <Enter the info from RIPES> 
- **Frequency:** <Enter the info from RIPES>
- **CPI:** <Enter the info from RIPES>
- **IPC:** <Enter the info from RIPES>

### Observation - 5 Stage
- **Cycles:** <Enter the info from RIPES> 
- **Frequency:** <Enter the info from RIPES>
- **CPI:** <Enter the info from RIPES>
- **IPC:** <Enter the info from RIPES>

### Memory Mapping
- **<Register Number Used>:** <Value Stored>

### Register Mapping
- **<Register Number Used>:** <Value stored>

### Snapshot
![Screenshot of RIPES window](<program1.png>)
```

- Repeat the above layout for each question
- **Note**: Open a PR to submit

### What should be included in this folder:
- `program1.s`, `program2.s` files
- `<SRN>_Week5_Lab.md` Markdown file, containing your observations for each program
- Screenshot of RIPES for each program, saved as `program1.png`, `program2.png`, etc
	- In the markdown file, you need to put the correct name of the image in the `()` brackets specified.

:warning: **Deadline**: 11:59 PM, Sunday, 17th November, 2024
