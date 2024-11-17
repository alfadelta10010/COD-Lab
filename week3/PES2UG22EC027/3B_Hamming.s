#7 bit hamming code
#       D D D P D P P    Parity bit or data bit
#bits - 7 6 5 4 3 2 1
# P1= D0 D1 D3
#     1  1  1 = 
# P2= D0 D2 D3
# P4= D1 D2 D3
# Data = 1011,1100
# Odd Parity
.data      #  3     2    1   0   
code1: .byte 0x01,0x00,0x01,0x01     # P1= 1 P2 = 0 P3 = 0 output 1010101 
code2: .byte 0x01,0x01,0x00,0x00     # P1= 1 P2 = 0 P3 = 0 output 1100001
.text
la x1,code2

Hamming:
    lb x3,0x03(x1)   #d0
    lb x4,0x02(x1)   #d1
    lb x5,0x01(x1)   #d2
    lb x6,0x00(x1)   #d3

    xor x11,x3,x4    # P1 = x11
    xor x11,x11,x6

    xor x12,x3,x5    # P2 = x12
    xor x12,x12,x6

    xor x13,x4,x5    # P3 = x13
    xor x13,x13,x6

    slli x12,x12,0x01
    slli x13,x13,0x03    
    add x15,x12,x13
    add x15,x15,x11

    slli x3,x3,0x02
    slli x4,x4,0x04
    slli x5,x5,0x05
    slli x6,x6,0x06
    add x15,x15,x3
    add x15,x15,x4
    add x15,x15,x5
    add x15,x15,x6
    sb x15,0x04(x1)