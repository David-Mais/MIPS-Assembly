.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	div $s0, $t0, $t1	#divides $t0 by $t1 in this case 30 by 5 and stores the result in $s0
	
	#printing the result!
	li $v0, 1
	move $a0, $s0
	syscall