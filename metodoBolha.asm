lw $s1, v
add $t0, $zero, $zero
addi $t1, $zero, 50
addi $t2, $zero, 1
addi $t3, $zero, 50
loop1:
	beq $t0, $t1, Exit1
	loop2:
		sub $t4, $t3, $t0
		beq $t2, $t3, Exit2		
		addi $t4, $zero, 1
		sub $t5, $t2, $t4
		add $t7, $t5, $t5
		add $t7, $t7, $t7
		add $t6, $t2, $t2
		add $t6, $t6, $t6
		add $t7, $t7, $s1
		add $t6, $t6, $s1
		lw $s2, 0($t6)
		lw $s3, 0($t7)
		slt $t8, $s2, $s3
		beq $t8, $zero, atribuicao
		atribuicao:
			lw $t9, 0($s2)
			lw $s2, 0($s3)
			lw $s3, 0($t9)
		continuacao:
			addi $t2, $t2, 1
			j loop2
		Exit2:
			addi $t0, $t0, 1
			j loop2
		Exit1: