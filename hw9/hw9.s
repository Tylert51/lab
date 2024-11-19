# Tyler Tang
# Hw 9

	.data
arr:	.word 10
	.word 2
	.word 31
	.word 44
	.word 0
	.word 9
result: .asciiz "Result = "

	.text

main: 
	la $s0, arr          
    	li $s1, 0             
   	li $t0, 0
   	li $t2, 30
loop:
    bge $t0, 6, done      
    lw $t1, 0($s0)        

         
    ble $t1, $t2, skip    

    add $s1, $s1, $t1   

skip:
    addi $s0, $s0, 4   
    addi $t0, $t0, 1  

    j loop      
        

done:

    li $v0, 4            
    la $a0, result        
    syscall

    li $v0, 1        
    move $a0, $s1       
    syscall

 
    li $v0, 10       
    syscall

