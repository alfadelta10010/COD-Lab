# x=(y+m)-(l-d)+(z+c)-d

.data
a: .word 0x12112212,0x11122212,0x33333343,0x56543321,0x10101010,0x11111111
       # y value   , m value  , l value  , d value  , c value  , z value
.text
la x12,a
lw x6,0(x12)              #y
lw x7,4(x12)              #m
lw x8,8(x12)              #l
lw x9,12(x12)             #d
lw x10,16(x12)            #c
lw x11,20(x12)            #z

add x6,x6,x7              #x6=y+m
sub x8,x8,x9              #x8=l-d
add x11,x11,x10           #x11=z+c
add x8,x8,x11             #x8=(l-d)+(z+c)
sub x6,x6,x8              #x6=(y+m)-(l-d)+(z+c)
sub x9,x6,x9              #x9=x6-x9(d)
sw x9,24(x12)