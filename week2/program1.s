#Write an Assembly Program for:addition of N words,addition of N half words,addition of N bytes

.data
n1: .word 0x00325462,0x12345678,0x00000004,0x10000000
n2: .half 0x1234,0x5555,0x0003,0x0789
n3: .byte 0x12,0x78,0x45,0x77

result_words: .word 0x0                                      # Result for words sum
result_halfwords: .word 0x0                                   # Result for half-words sum
result_bytes: .word 0x0 

.text
la x5,n1
la x6,n2
la x7,n3

addi x28,x0,4
addi x29,x0,4
addi x30,x0,4
addi x10,x0,4

sum_words_loop:
    beq x28, x0, sum_words_done   # If counter is zero, end loop
    lw x18, 0(x5)                 # Load word from memory into x18
    add x10, x10, x18            # Add word to accumulator
    addi x5, x5, 4               # Move to the next word (4 bytes)
    addi x28, x28, -1              # Decrement counter
    j sum_words_loop   
    
sum_words_done:
    la x5, result_words          # Load address for result_words
    sw x10, 0(x5)               # Store result of words sum
    addi x10,x0,0             
    
sum_halfwords_loop:
    beq x29, x0, sum_halfwords_done 
    lh x19, 0(x6)                 # Load half-word from memory into x19
    add x10, x10, x19             # Add half-word to accumulator
    addi x6, x6, 2               # Move to the next half-word (2 bytes)
    addi x29, x29, -1              # Decrement counter
    j sum_halfwords_loop         # Repeat loop
    
sum_halfwords_done:
    la x6, result_halfwords      # Load address for result_halfwords
    sw x10, 0(x6)                # Store result of half-words sum
    addi x10,x0,0 
    
sum_bytes_loop:
    beq x30, x0, sum_bytes_done   # If counter is zero, end loop
    lb x20, 0(x7)                 # Load byte from memory into x20
    add x10, x10, x20             # Add byte to accumulator
    addi x7, x7, 1               # Move to the next byte (1 byte)
    addi x30, x30, -1              # Decrement counter
    j sum_bytes_loop             # Repeat loop
    
sum_bytes_done:
    la x7, result_bytes          # Load address for result_bytes
    sw x10, 0(x7)                # Store result of bytes sum