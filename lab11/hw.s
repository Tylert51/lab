.text

main:
addi $t1, $0, 5
add $s0, $0, $0
lw $s1, 4($s0)
sw $t1, 0($s0)
beq $s1, $t1, done
addi $v0, $t1, 1
sw $t1, 4($s0)

done:
addi $v0, $s1, 1
lw $s1, 8($s0)
addi $s0, $s0, 1
