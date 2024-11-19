    # Homework-09
	# array.s -- a simple program demonstrating
	# an array, and a while loop in MIPS.
	.data
x:	.word 10
	.word 5
	.word 130
	.word 227
	.word 84
	.word 0
prompt:
    .asciiz "The total of the array is: "

	.text
main:
	# "s0" is the pointer to the array
	la $s0, x

	# set "s1" to zero. We'll use this
	# to compute a total
	add $s1, $0, $0

	# each time around the loop, we load
	# an element from the array into register "t2"
loop:
    lw $t2, 0($s0)
	beq $t2, $0, done

	# add the value to our running total
	add $s1, $s1, $t2

	# move the pointer to the next element
	# of the array. Note that we add 4, because
	# every word is 4 bytes.
	add $s0, $s0, 4

	# back to the top of the loop
	j loop

	# here's the end of the loop. Print
	# the total, and then halt the machine
done:
    # print prompt
	li $v0, 4
	la $a0, prompt
	syscall

	# now print the total
	li $v0, 1
	addi $a0, $s1, 0
	syscall

	# halt the machine
	li $v0, 10
	syscall

