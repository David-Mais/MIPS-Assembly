.data
	prompt: .asciiz "Enter your age: "
	message: .asciiz "\nyour age is: " 
.text
	#print what is stored in the prompt
	li $v0, 4
	la $a0, prompt
	syscall 
	
	#getting the users age
	li $v0, 5
	syscall
	
	#store the number in the register
	move $t0, $v0
	 
	#display the message
	li $v0, 4
	la $a0, message
	syscall
	
	#print age
	li $v0, 1
	move $a0, $t0
	syscall