main:
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	li	$v0,5
	sw 	$v0,8($fp)
	li 	$v0,6
	sw 	$v0,12($fp)
	lw 	$v1,8($fp)
	lw 	$v0,12($fp)
	nop
	addu 	$v0,$v1,$v0
	sw 	$v0,16($fp)
	lw 	$v1,16($fp)
	lw 	$v0,8($fp)
	nop
	subu 	$v0,$v1,$v0
	sw	$v0,20($fp)
	move 	$v0,$zero
	move 	$sp,$fp
	lw 	$fp,28($sp)
	addiu 	$sp,$sp,32
	jr 	$ra
	nop
