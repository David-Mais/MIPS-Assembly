.data 
	myInteger: .word 50	#we are using .word because integer is just a 32 bit word
.text
	li $v0, 1		#$v0 value should be set to 1 if we want to return integer
	lw $a0, myInteger	#we are using lw here because integer is a 32 bit word and we are loading a  word onto a register
	syscall