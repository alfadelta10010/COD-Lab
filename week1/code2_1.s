# ii.Write an Assembly Program for addition of 2 half words
.data
n: .half 0x1111,0x2222
.text
la x5,n
lh x6,0(x5)
lh x7,2(x5)
add x9,x6,x7
