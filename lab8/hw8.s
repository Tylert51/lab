	# Homework-08
	
	.data
x:	.word 0x24681357	#1
str: 	.asciiz "CS120"
y:	.word 0xcdef1234	#2
z:	.word 0x0
q:	.word 0xff00acef	#3


	.text
main: 	la $t0, x		#4
	lw $s0, 0($t0)		#5
	
	la $t1, str		#6
	lb $s0, 0($t1)
	lb $s1, 1($t1)
	lb $s2, 2($t1)
	lb $s3, 3($t1)
	add $t0, $s0, $s1	#7

	la $t0, z		#8
	sw $s0, -4($t0)		#9
	sw $s1, 4($t0)		#10

	jr $ra