    .data

    .text
main:
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    li $t0, 5           # a = 5
    sw $t0, 0($sp)

    add $a0, $t0, $0    # b = 5
    jal compute

    add $a0, $v0, $0
    li $v0, 1
    syscall

    lw $ra, 4($sp)
    addi $sp, $sp, 8

    li $v0, 0
    jr $ra

compute:
    li $t0, 1
    li $t1, 1

for:
    bgt $t1, $a0, done
    sll $t0, $t0, 2
    addi $t1, $t1, 1
    j for

done:
    add $v0, $t0, $0
    jr $ra