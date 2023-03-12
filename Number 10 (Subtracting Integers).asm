.data
	num1: .word 10
	num2: .word 15
.text
	lw $t0, num1
	lw $t1, num2
	
	sub $t1, $t0, $t1
	
	li $v0, 1
	move $a0, $t1			#moves the value from temp register to $a0
	syscall
	