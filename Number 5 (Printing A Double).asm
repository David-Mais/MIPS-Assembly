.data
	myDouble: .double 5.111
	myZero: .double 0.0
.text 
	ldc1 $f0, myZero
	ldc1 $f2, myDouble
	li $v0, 3
	add.d $f12, $f0, $f2
	syscall