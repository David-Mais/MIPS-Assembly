.data

.text
	addi $s0, $zero, 40
	addi $s1, $zero, 50
	
	mul $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall