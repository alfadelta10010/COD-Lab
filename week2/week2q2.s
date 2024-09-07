#PROGRAM 2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
.data
b: .word 0xFEABCFDE,0xFFEEACDB,0xEEEEAAAA,0xBBBBCCCC,0
.text
la x10,b
lw x11,0(x10)
	@@ -64,3 +53,4 @@ add x16,x15,x14
add x17,x16,x18
sltu x19,x17,x16 #to check for carry