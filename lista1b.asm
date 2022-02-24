reverse:
	addi $t0, $zero, 0 # i =0
	addi $t1, $zero, 1 # aux = 1
	addi $t5, $zero, 2 # aux 2 = 2 
	# admite-se que $s1 = int* v e $s2 = int size
	loop: # while (i<size/2)
		div $s2, $t5 # size/2
		mflo $t6 # $t6 = size/2
		slt $t8, $t0, $t6 # if (i<size) $t8=1 else $t8=0
		beq $t8, $zero, exit # i>size, sai do loop
		lw $t2, $t0($s1) # temp = v[i]
		sub $t3, $s2, $t0 # $t3 = size-i
		sub $t3, $t3, $t1 # $t3 = size-i-1
		lw $t4, $t3($s1) # $t4 = v[size-i-1]
		sw $t4, $t0($s1) # v[i] =  v[size-i-1]
		sw $t2, $t3($s1) # v[size-i-1] = temp
		sll $t1, $t1, 2 # i++
		
	j loop

exit: