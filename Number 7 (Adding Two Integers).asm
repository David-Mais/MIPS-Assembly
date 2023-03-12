.data
	num1: .word 10
	num2: .word 15
.text
	lw $t0, num1
	lw $t1, num2
	
	add $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall