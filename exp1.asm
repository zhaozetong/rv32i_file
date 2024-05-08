.data
init_data:
    .word 10


.text
lw x1, init_data #cishu
li x4, 0
li x5, 1 # a[1]
li x6, 0

loop1:
	add x6, x4, x5
	mv x4, x5
	mv x5, x6
	addi x1, x1, -1
	bgtz x1, loop1
mv x2, x4
li a7, 10
# ecall
ebreak
