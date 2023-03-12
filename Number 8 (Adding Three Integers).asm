.data
	num1: .word 10
	num2: .word 20
	num3: .word 30
.text
	lw $t0, num1
	lw $t1, num2
	lw $t2, num3
	
	add $t1, $t0, $t1
	add $t2, $t1, $t2
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall