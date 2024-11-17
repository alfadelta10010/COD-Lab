.data
a:.byte 0x00,0x01,0x04,0x02,0x03,0x06,0x08
.text
la x1,a
addi x2,x1,0x00
addi x8,x1,0x06        # Number of Elements in a Array

loop:
beq x2,x8,exit         # To Ensure the last element is not compared with unused bytes in memory
lbu t0,0x00(x2)        
lbu t1,0x01(x2)
bgtu t0,t1,swap        # Swaping if t0 is greater than t1
addi x2,x2,0x01        # Value of x2 is incremented to access next set of data to be compared
bltu x2,x8,loop        # Number of Iterations is Compared if i < 6 then its looped
beq t2,x0,exit         # t2 Stores the the number of times data was swapped in current iteration, if no swaps it terminates
addi t2,x0,0x00        # if swaps are still being made t2 and x2 are reset to 0
addi x2,x1,0x00
j loop                 # loop is invoked for next set of iterations

swap:
sb t1,0x00(x2)         # swap is done directly in memory
sb t0,0x01(x2)
addi x2,x2,0x01
addi t2,t2,0x01        # t2 and x2 are incremented
beq x0,x0,loop

exit:
  nop  