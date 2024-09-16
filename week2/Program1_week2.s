.data
a:  .half 0x1234
    .half 0x5678
    .half 0x0000
    .half 0x0000
    .half 0x0000
    .half 0x0000
    .half 0x0000
    .half 0x0000
    .half 0x0000
    .half 0x0000
    .half 0x0000

.text
la x10, a
li t0, 0

lh t1, 0(x10)
add t0, t0, t1

lh t1, 2(x10)
add t0, t0, t1

lh t1, 4(x10)
add t0, t0, t1

lh t1, 6(x10)
add t0, t0, t1

lh t1, 8(x10)
add t0, t0, t1

lh t1, 10(x10)
add t0, t0, t1

lh t1, 12(x10)
add t0, t0, t1

lh t1, 14(x10)
add t0, t0, t1

lh t1, 16(x10)
add t0, t0, t1

lh t1, 18(x10)
add t0, t0, t1

sh t0, 20(x10)
