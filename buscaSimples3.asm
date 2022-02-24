lw $s1, v
lw $s2, c
addi $t0, $zero, 50
addi $t1, $zero, -1

loop:
	beq $t0, $t1, Exit
	lw $s3, 4($t0)
	beq $s3, $s2, Retorno
	
	Retorno:
		sw $v0, 0($t0)
		j Exit
	Continuacao:
		addi $t2, $zero, 1
		sub $t0, $t0, $t2
		j loop
	Exit:
		sw $v0, 0($t1)