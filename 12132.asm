.text

lui x1, 0x01
lui x2, 0x02
lui x3, 0x03
lui x4, 0x02
lui x5, 0x01

jal x1, end
add x1, x1, x1
add x1, x1, x1
add x1, x1, x1
end:
	nop
