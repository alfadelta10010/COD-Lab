# Write an assembly program to check whether a given number in an array of elements is divisible by 9

.text
main: 
    li x5, 36                 # Load the value 36 into register x5
    li x6, 9                   # Load the divisor 9 into register x6
    rem x7, x5, x6            # Compute the remainder of x5 divided by x6 (36 % 9) and store it in x7
    beq x7, x0, divisible     # If remainder (x7) is 0, branch to divisible

not_divisible: 
    li x10, 0                 # Load 0 into register x10 (indicating not divisible)
    beq x0,x0 end             # Infinite loop (or effectively a no-operation since it branches to itself)

divisible: 
    li x10, 1                 # Load 1 into register x10 (indicating divisible)

end: 
    nop                       # No operation (program will effectively stop here)
    
    # true x10 = 1