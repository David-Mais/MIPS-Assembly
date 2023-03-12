.data

.text
	addi $s0, $zero, 4
	
	sll $t0, $s0, 3		#sll (Shift Left Logical) multiplies the Rs (source register to the 2^i. I in whis case is 3 so the immediate
				#that you put inside is the exponent
	
	li $v0, 1
	move $a0, $t0
	syscall