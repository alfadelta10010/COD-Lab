    .data
a:  .word  0xAABBCCDD    
    .text
    la      t0, a   
    lw      t1, 0(t0)          # Load 32-bit little-endian value into t1
    li      t2, 0xFF           
    and     t3, t1, t2         
    srli    t1, t1, 8         
    and     t4, t1, t2         
    srli    t1, t1, 8          
    and     t5, t1, t2        
    srli    t1, t1, 8          
    and     t6, t1, t2         
    slli    t1, t3, 24         
    slli    t4, t4, 16        
    slli    t5, t5, 8          
    or      t1, t1, t4         
    or      t1, t1, t5        
    or      t1, t1, t6        
    # Now t1 contains the big-endian value
    li      a0, 10             
