.data
times:
	.word 70

.text

# li x2, 80 #cishu
lw x2, times

li x5, 0 # a[0]
li x6, 0 # a[0]
li x7, 0
li x8, 1

loop1:
	jal ADL # call 
	addi x2, x2, -1
	bgtz x2, loop1
mv x3, x5
mv x4, x6
nop
li a7, 10
ebreak



ADL:
	add x10, x6, x8 # low 
	sltu x11, x10, x8 # if overflow set x11
	beqz x11, uflow # not overflow
	addi x5, x5, 1
uflow:
	add x9, x5, x7 #high
	mv x5, x7
	mv x6, x8
	mv x7, x9
	mv x8, x10
	ret

	
