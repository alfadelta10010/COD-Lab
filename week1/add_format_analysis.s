{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0     .data\
a: .word 0x80000002, 0x9123456A   \
b: .half 0x8002, 0x456A           \
c: .byte 0x82, 0x6A               \
\
    .text\
    la x1, a          \
    lw x2, 0(x1)       \
    lw x3, 4(x1)      \
    add x4, x3, x2     \
    sw x4, 8(x1)      \
\
    la x1, b           \
    lh x2, 0(x1)       \
    lh x3, 2(x1)       \
    add x4, x3, x2    \
    sh x4, 4(x1)       \
\
    la x1, c           \
    lb x2, 0(x1)       \
    lb x3, 1(x1)       \
    add x4, x3, x2    \
    sb x4, 2(x1)      \
\
}