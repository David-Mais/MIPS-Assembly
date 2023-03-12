.data 
	myChar: .byte 'a'	#since character is just a byte long we use .byte
.text
	li $v0, 4		#we are loading 4 into $v0 register to indicate return value
	la $a0, myChar		#we are loading address into register $a0
	syscall