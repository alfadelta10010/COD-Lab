.text # non recursive factorial
addi x11, x0, 5 # input number
addi x20, x0, 1
addi x21, x0, 1
loop:
    mul x20, x20, x11
    mulhu x21, x20, x11
    addi x11, x11, -1
    bnez x11, loop
