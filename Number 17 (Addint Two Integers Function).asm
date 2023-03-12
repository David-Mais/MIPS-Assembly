.data

.text
	main:
		addi $a1, $zero, 10	#we created parameters for the function addNumbers
		addi $a2, $zero, 15
		
		jal addNumbers
		
		#printing the result
		li $v0, 1
		move $a0, $v1
		syscall
		
		#ending the program
		li $v0, 10
		syscall
	
	
	addNumbers:
		add $v1, $a1, $a2	#store the sum of $a1 and $a2 in the register $v1
		jr $ra