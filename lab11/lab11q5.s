# Tyler Tang

    .data

arr:    
    .word 'E'
    .word 'L'
    .word 'V'
    .word 'I'
    .word 'S'

    .text

main:
    la $s0, arr     # address of first element of arr 
    li $s1, 0       # index i = 0

    li $t0, 'G'     
    li $t1, 'M'     # for comparing
    li $t2, 4       # max index

for: 
    lw $a0, 0($s0)      # curr element of arr

    jal replace         # call replace   
    
    beq $s1, $t2, done
    addi $s1, $s1, 1    # increase index
    addi $s0, $s0, 4    # move to next element in array
    

    j for

replace:                #replace func
    
    addi $sp, $sp, -4   # make space for 1 register

    sw $ra, 0($sp)      # store return address

    ble $a0, $t0, true
    bge $a0, $t1, true

    j skip


true:                   # if <= 'G' || >= 'M'
    
    move $s2, $a0
    addi $s2, $s2, 32
    sw $s2, 0($s0)      # save element back in arr


skip:                   
    li $v0, 4           # print str
    move $a0, $s0
    syscall        
    
    move $v0, $a0       # return ch

    lw $ra, 0($sp)      # restore ra
    addi $sp, $sp, 4    # restore sp

    jr $ra

done:
    li $v0, 10
    syscall