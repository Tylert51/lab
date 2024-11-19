	# Tyler Tang	
	# Homework-08

	.text
main: 	li $s0, 10
	la $s1, 0x10
	la $s2, 0xabcd0123
	add $t0, $s0, $s1
	add $s3, $t0, $s2
	sw $s3, 0x10010010

	li $v0, 10
	syscall
	