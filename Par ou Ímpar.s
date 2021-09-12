.data
	STR1: .string "Digite um número: "
	PAR: .string "\n O número que você digitou é par"
	IMPAR: .string "\n O número que você digitou é ímpar"
.text
	li a7,4
	la a0,STR1
	ecall
	
	li a7,5
	ecall
	mv t0,a0
	
	li t1,2
	rem t2, t0,t1
	beq zero,t2,GO
	li a7,4
	la a0,IMPAR
	ecall

GO: 	li a7,4
	la a0,PAR
	ecall
	
	ebreak
