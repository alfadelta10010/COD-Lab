.data
a: .word 0x12345678

.text
la x10,a
lw x11,0(x10)
   

little:
      
      slli x12,x12,8 #reg to store reversed bytes -> shift by 1 byte (left) after each loop
      andi x13,x11,0xff #extracting the last byte of the original reg.
      srli x11,x11,8 #shift by 1 byte after extraction is done.
      add x12,x12,x13 #store the newly extrated values
      bne x11,x0,little #execute until x11(origin reg) becomes zero.
      
sw x12,4(x10)


 