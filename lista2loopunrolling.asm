fib_store:
# supoe-se que $s1 = int* v e $s2 = int size
	addi $t0, $zero, 1 # i = 1
	addi $t1, $zero, 0 # f0 = 0
	addi $t2, $zero, 1 # f1 = 1
	addi $t3, $zero, 1 # aux = 1
	sw $t1, 0($s1) # v[0] = f0
	
	loop:
		slt $t5, $t0, $s2 # if (i<size)
		beq $t5, $zero, exit # i>size, sai do loop
		
		sw $t2, $t0($s2) # v[i] = f1
		add $t2, $t1, $t2 # f1 = f0+f1
		lw $t6, $t0($s1) # aux = v[i]
		sw $t6, 0($t1) # f0 = v[i]
		sll $t0, $t0, 2 # i++
		
		sw $t2, $t0($s2) # v[i] = f1
		add $t2, $t1, $t2 # f1 = f0+f1
		lw $t6, $t0($s1) # aux = v[i]
		sw $t6, 0($t1) # f0 = v[i]
		sll $t0, $t0, 2 # i++
		
		sw $t2, $t0($s2) # v[i] = f1
		add $t2, $t1, $t2 # f1 = f0+f1
		lw $t6, $t0($s1) # aux = v[i]
		sw $t6, 0($t1) # f0 = v[i]
		sll $t0, $t0, 2 # i++
		
		sw $t2, $t0($s2) # v[i] = f1
		add $t2, $t1, $t2 # f1 = f0+f1
		lw $t6, $t0($s1) # aux = v[i]
		sw $t6, 0($t1) # f0 = v[i]
		sll $t0, $t0, 2 # i++
	exit: