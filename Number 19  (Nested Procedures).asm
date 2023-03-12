.data
	line: .asciiz "\n"
.text
	main:
	
		addi $s0, $zero, 15
		
		jal increment
		
		li $v0, 4
		la $a0, line
		syscall
		
		jal print		#instead of repeating code we write printing method 
	
		#end of the program
		li $v0, 10
		syscall
	
	
	increment:
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)		#like we did to the s0 register we also have to save the address of the ra register on the stack because otherwise
					#program would be unable wo find where to jump an it will continue in the main method without finishing the other lines
		
		addi $s0, $s0, 10
		
		jal print
		
		lw $s0, 0($sp)
		lw $ra, 4($sp)		#as we did in the s0 we have to load the original value onto the ra register
		addi $sp, $sp 8
		
		jr $ra
		
	print:
		li $v0, 1
		move $a0, $s0
		syscall
		
		jr $ra