.data

.text
	addi $t0, $zero, 200000
	addi $t1, $zero, 100000
	
	mult $t0, $t1
	
	mflo $s0
	mfhi $s1
	
	li $v0, 1
	add $a0, $s1, $s0
	syscall
	