#Add two 64-bit numbers in RV32I

.data 
a: .word 0xFFFFFFFF,0x12345678,0x00001234,0x0000ABCD


.text
la x10,a
lw x11,0(x10) #lower significant word-num1
lw x12,4(x10) #upper significant word-num1
lw x13,8(x10) #lower significant word-num2
lw x14,12(x10) #upper significant word-num2

add x15,x11,x13 # add the lower sig of num1 and num2 
sltu x16,x15,x11 #addition of lower sig of num1 and num2 exceeds 32-bit, therefore generates carry stored in x16
sw x15,16(x10) # store sum of lower sig of num1 and num2 in x15

add x17,x12,x14 #add the upper sig of num1 and num2 in x17, sum is within 32-bit 
add x17,x17,x16 # add the sum upper sig of num1 and num2 with carry of addition of lower sig num1 and num2


sw x17,20(x10) # store the resultant sum Of MS word In x17
 


