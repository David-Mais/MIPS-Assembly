.data
	num1: .word 10
	num2: .word 15
.text 
	lw $t0, num1		#$t0 = 10
	lw $t1, num2		#$t1 = 15
	
	sub $t1, $t0, $t1	#$t1 = $t0 - $t1
	
	li $v0, 1
	add $a0, $zero, $t1
	syscall