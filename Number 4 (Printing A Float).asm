.data
	myfloat: .float 15.7
.text
	li $v0, 2           #when value of $v0 is 2 then return type is flaot
	lwc1 $f12, myfloat  #always keep float in f12 or it will not print 
	syscall