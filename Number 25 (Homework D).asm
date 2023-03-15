#(4x / 3) * y
#This code prompts the user for input of two numbers X and Y and calculates (4X/3)*Y
#It retrieves the input using syscall 6 moves values to floating-point registers loads 
#constant values and performs calculations using multiplication and division The final 
#result is stored in a floating-point register and printed to the console using syscall 2
#The program ends with syscall 10
.data
	promptx: .asciiz "Please enter number for X: "
	prompty: .asciiz "Please enter number for Y: "
	message: .asciiz "Your result is: "
	three:   .float  3.0
	four:    .float  4.0
.text
main:
	#printing the promptx
	li $v0, 4
	la $a0, promptx
	syscall
	
	#retrieving input X
	li $v0, 6
	syscall
	
	#moving X to another register
	mov.s $f1, $f0
	
	#printing prompty
	li $v0, 4
	la $a0, prompty
	syscall
	
	#retrieving input Y
	li $v0, 6
	syscall
	
	#moving y to another register
	mov.s $f2, $f0
	
	#adding constants to registers
	lwc1 $f3, three
	lwc1 $f4, four
	
	#calculating 4x
	mul.s $f1, $f1, $f4
	
	#calculating (4x / 3)
	div.s $f5, $f1, $f3
	
	#calculating (4x / 3) * y
	mul.s $f6, $f5, $f2
	
	#printing the message
	li $v0, 4
	la $a0, message
	syscall
	
	#printing the result
	li $v0, 2
	mov.s $f12, $f6
	syscall
	
	#ending the program
	li $v0, 10
	syscall