# ((5x + 3y + z)/2)*3
.data
	promptx: .asciiz "please input a number x: "
	prompty: .asciiz "please input a number y: "
	promptz: .asciiz "please input a number z: "
	result:  .asciiz "result of your numbers is: "
	zero:    .float 0.0
	two:     .float 2.0
	five:    .float 5.0
	three:   .float 3.0
.text
	#handling input of x
	
	li $v0, 4
	la $a0, promptx
	syscall
	
	#reading x
	li $v0, 6
	syscall
	
	mov.s $f1, $f0		#f1 = x
	
	#handling y
	
	li $v0, 4
	la $a0, prompty
	syscall
	
	#reading y
	li $v0, 6
	syscall
	
	mov.s $f2, $f0		#f2 = y
	
	#handling z
	
	li $v0, 4
	la $a0, prompty
	syscall
	
	#reading z
	li $v0, 6
	syscall
	
	mov.s $f3, $f0		#f2 = z
	
	
	
	
	
	
	# ((5x + 3y + z)/2)*3
	# ((5*f1 + 3*f2 + f3)/2)*3
	lwc1 $f4, five
	lwc1 $f5, three
	
	#calculating 5x and 3y
	mul.s $f1, $f1, $f4
	mul.s $f2, $f2, $f5
	
	#adding all the variables togeother
	add.s $f1, $f1, $f2
	add.s $f1, $f1, $f3
	
	lwc1 $f2, two
	
	#doing math with immediates
	div.s $f1, $f1, $f2
	mul.s $f1, $f1, $f5
	
	#finally printing the result
	li $v0, 4
	la $a0, result
	syscall
	
	#printing an answer
	li $v0, 2
	mov.s $f12 $f1
	syscall
	