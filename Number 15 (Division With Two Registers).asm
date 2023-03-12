.data
.text
	addi $t0, $zero, 103
	addi $t1, $zero, 4
	
	div $t0, $t1
	
	mflo $s0	#Quotient is stored in the low bits
	mfhi $s1	#Remainder is stored in the Hight bits
	
	#printing the result
	li $v0, 1
	add $a0, $zero, $s1
	syscall
	
	#In this case we get result 3 because reaminder is 3 if we printed the $s0 register we would get 25 because 100/4=25
	#As you can see from the program reaminder was stored in the hi register and the quotient in the lo register