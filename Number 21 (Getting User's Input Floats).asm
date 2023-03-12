.data
	prompt: .asciiz "Please Input Float: "
	message: .asciiz "your input was: "
	zero: .float 0.0
.text
	lwc1 $f4, zero


	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 6
	syscall
	
	
	
	li $v0 4
	la $a0, message
	syscall
	
	li $v0, 2
	add.s $f12, $f0, $f4
	syscall