lw $s1, v
addi $t0, $zero, 49
addi $t4, $zero, 50
add $t0, $zero, $zero
lopp1: 
	beq $t0, $t1, Exit1
	add $t2, $zero, $t0
	
	loop2:
		addi $t3, $zero, 1
		add $t3, $t3, $t0
		beq $t3, $t4, Exit2
		add $t5, $t3,$t3
		add $t5, $t5, $t5
		add $t5, $t5, $s1
		add $t6, $t2, $t2
		add $t6, $t6, $t6
		add $t6, $t6, $s1
		lw $s2, 0($t5)
		lw $s3, 0($t6)
		slt $t7, $s2, $s3
		addi $t8, $zero, 1
		beq $t7, $t8, index
		
		index:
			add $t2, $zero, $t3
		continuacao:
			addi $t3, $t3, 1
			j loop2
	Exit2:
		lw $s4, 4($t0)
		lw $t9, 0($t6)
		lw $s3, 0($s4)
		lw $s4, 0($t9)
		addi $t0, $t0, 1
		j loop1
		
	Exit1: