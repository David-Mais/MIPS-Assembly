#x^3 + 2x^2 + 3x + 4
#This code is a MIPS assembly program that computes the value of the polynomial 
#expression x^3 + 2x^2 + 3x + 4 given a user input value for x The program prompts 
#the user to enter a value for x reads the input from the console and stores it in a 
#register It then performs the necessary calculations on the value of x to compute the 
#result of the polynomial expression Finally, the program displays the result to the user
#This program provides an example of how basic arithmetic and input/output operations can be 
#performed in MIPS assembly
.data
	prompt:  .asciiz "Please enter number x: "
	message: .asciiz "Your result is: "
	zero:    .float 0.0
	two:     .float 2.0
	three:   .float 3.0
	four:    .float 4.0
.text
	#printing the prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	#getting the numebr X
	li $v0, 6
	syscall
	
	#storing the numbers in registers
	lwc1 $f1, zero
	lwc1 $f2, two
	lwc1 $f3, three
	lwc1 $f4, four
	
	#moving the x to another register
	mov.s $f5, $f0
	
	#calculating 3x
	mul.s $f6, $f5, $f3
	
	#calculating 2x^2
	mul.s $f7, $f5, $f5
	mul.s $f7, $f7, $f2
	
	#calculating x^3
	mul.s $f8, $f5, $f5
	mul.s $f8, $f8, $f5
	
	#calculatinf final result
	add.s $f9, $f9, $f6
	add.s $f9, $f9, $f7
	add.s $f9, $f9, $f8
	add.s $f9, $f9, $f4
	
	#printing the message
	li $v0, 4
	la $a0, message
	syscall
	
	#printing an answer
	li $v0, 2
	mov.s $f12, $f9
	syscall