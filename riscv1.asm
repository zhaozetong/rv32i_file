.data 
str: .string "PB22071439zhaozetong"
.text
main:
	la x2, str	
	jal strlen
	addi x5, x3, -1
loop1:
	addi x6, x3, -1 # set x6 --loop2
	mv x4, x2 # set pointer
	loop2:
		jal swap
		addi x4, x4, 1
		addi x6, x6, -1
		bne x6, x0, loop2
		#end loop2
	addi x5, x5, -1
	bne x5, x0, loop1
	# end loop1
	mv a0, x2
	li a7, 4
	ecall
	li a7 10
	ecall
strlen:
	#x3 len 
	li x8, 0
	mv x3, x8
	mv x7, x2 #x7 addr
loops:
	lb x8, 0(x7)
	addi x3, x3, 1
	addi x7, x7, 1 # 1 bit
	bnez x8, loops # not over
	addi x3, x3, -1 
	ret
swap:
	# x4  array pointer
	lb x7, 0(x4)
	lb x8, 1(x4)
	bge x7, x8, endswap
	mv x9, x7
	mv x7, x8
	mv x8, x9
	# WB
	sb x7, 0(x4)
	sb x8, 1(x4)
endswap:
	ret
	
	

	
