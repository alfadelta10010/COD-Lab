# wap for sum of elements in an array ,take each element is of half-words size
# h = h+a[i]

.data
a: .half 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,0x01 
s: .half 0x00

.text
la x10, a
la x11, s
lh x6,0(x11)

addi x12 ,x0,0
addi x20,x0,9
loop:
    lh x13,0(x10)
    add x6,x6,x13
    addi x12,x12,1
    addi x10,x10,2
    bltu x12,x20,loop
    sh x6,0(x10)
 