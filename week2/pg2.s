.data
a:  .dword 0x8000123400001234, 0x9000012300001235

    .text
    la ra, a
    lw s1, 0(ra)
    lw s2, 8(ra)
    add s3, s1, s2
    sltu s4, s3, s2
    sw s3, 16(ra)
    lw s1, 4(ra)
    lw s2, 12(ra)
    add s5, s1, s2
    add s6, s5, s4
    sw s6, 20(ra)
