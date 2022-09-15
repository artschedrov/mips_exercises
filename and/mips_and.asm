# первое значение 1100100
# второе значение 1111000
# при побитовом И получаем 1100000

main:
	addiu 	$sp,$sp, -32
	sw	$fp,28($sp)
	move    $fp,$sp
	
	li      $v0,100		#1100100           
    	sw      $v0,8($fp)
    	li      $v0,120		#1111000
    	sw      $v0,12($fp)
        
	lw	$v1,8($fp)
	lw	$v0,12($fp)
	nop
	and 	$v0,$v1,$v0
	sw	$v0,16,($fp)	#1100000
	move	$v0,$zero
	
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$ra
	nop
	
	
