lw $s1, v
lw $s0, c
addi $t0, $zero, 25
addi $t1, $zero, 25
addi $t2, $zero, 26

loop:
	beq $t0, $t2, Exit
	addi $t3, $zero 2
	sub $t4, $t1, $t0
	div $t4, $t3
	mflo $t5
	add $t6, $t0, $t5
	lw $s2, 4($t6)
	beq $s0, $s2, Retorno
	
	Retorno:
		sw $v0, 0($t6)
		j Exit
	Continuacao:
		slt $t7, $s2, $s0
		addi $t8, $zero, 1
		beq $t7, $t8, Somar
		bne $t7, $t8, Subtrair
		
		Somar:
			addi $t0, $t6, 1
			
		Subtrair:
			sub $t1, $t6, $t8
	Continuacao2:
		j loop
	Exit:
		add $t9, $zero, -1
		sw $v0, 0($t9)			