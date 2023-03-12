.data
	hello: .asciiz "Hello Assembly"  #we write .asciiz to indicate following is a string
.text
	li $v0, 4
	la $a0, hello
	syscall