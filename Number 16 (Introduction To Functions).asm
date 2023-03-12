.data
	message: .asciiz "Hello Everyone\nMy Name Is Davit"
.text
	main:
		jal displayMessage		#we are calling the displayMessage function
	
		li $v0, 10			#this is necessery if we want to end the program
		syscall				#if we dont to this the program will continue to run nonstop and finally crash
		
		
	displayMessage:				#this is the displayMessage function that displays whatever we store in .data message
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra				# when the displaymessage ends we want this line of code so that it can return to the main function 
						# so that program can continue to run and do all the tasks that we wrote afterr the call of the function
	
	