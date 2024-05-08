.text
jump:
	beq x1, x2, jump
bne x2, x3, jump
blt x3, x4, jump
bge x4, x5, jump
bltu x5, x6, jump
bgtu x6, x7, jump
j jump
jal x1, jump
jalr x2,0(x3)

