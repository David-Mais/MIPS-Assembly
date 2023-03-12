.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10	#sotres the value 10 in register $s0
					#because we are using s registers we have to allocate space on stackand we do that in increase function
		
		jal increase
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 1
		move $a0, $s0
		syscall
	
	
	
		li $v0, 10
		syscall
	
	increase:
		addi $sp, $sp, -4	#we are allocating 4 bytes of storage for whe word
		sw $s0, 0($sp)		#now we are storing whatever we have in register $s0 to the top of the stack
		
		addi $s0, $s0, 15	#now this is just what the function does it increments 15
		
		
		#prints the incremented $s0 register
		li $v0, 1
		move $a0, $s0
		syscall
		
		
		#following two lines sets the $s0 value to the inital value that we made it
		lw $s0, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra