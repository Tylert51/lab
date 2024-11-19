# Tyler Tang

    .data

arr:    
    .word 'E'
    .word 'L'
    .word 'V'
    .word 'I'
    .word 'S'

newline:
    .byte '\n'

    
    .text

main:
    la $s0, arr     # address of first element of arr 
    li $s1, 0       # index i = 0

    li $t0, 'G'     
    li $t1, 'M'     # for comparing
    li $t2, 5       # max index

for: 
    lw $s2, 0($s0)   # curr element of arr

    beq $s1, $t2, done
    ble $s2, $t0, true
    bge $s2, $t1, true

    j skip             # if not true

true:                   # if <= 'G' || >= 'M'
    addi $s2, $s2, 32
    sw $s2, 0($s0)      # save element back in arr


skip:                   
    li $v0, 4           # print str
    move $a0, $s0
    syscall        
    
    addi $s0, $s0, 4    # move to next element in array
    addi $s1, $s1, 1     # increase index

    j for

done:
    li $v0, 11
    lb $a0, newline
    syscall


    li $v0, 10
    syscall




    
