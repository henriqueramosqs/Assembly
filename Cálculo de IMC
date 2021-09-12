.data
	perguntaAltura: .string "Digite sua altura em metros: "
	perguntaPeso:	.string  "Digite seu peso em kilogramas: " 
	
	ResultadoobesidadeIII: .string "Você se classifia em Obesidade III"
	ResultadoobesidadeII: .string "Você se classifia em Obesidade II"
	ResultadoobesidadeI: .string "Você se classifia em Obesidade I"
	Resultadosobrepeso: .string "Você se classifia em sobrepeso"
	Resultadonormal: .string "Você se classifia em normal"
	ResultadoInferior: .string "Você se classifia em abaixo do normal"
	
		
.text
	
	li a7,4
	la a0,perguntaAltura
	ecall
	 
	li a7,6
	ecall
	fmul.s f1,fa0,fa0	

	li t0, 40
	fcvt.s.w f18, t0 #f18 para valor de Obesidade III
	
	li t0, 35
	fcvt.s.w f19, t0 #f22 para valor de Obesidade II

	li t0, 30 
	fcvt.s.w f20,t0 # f20 para o valor de Obesidade I
	
	li t0, 25
	fcvt.s.w f21 ,t0# f20 para o valor de sobrepeso
	
	
	li t0, 37
	li t1, 2
	fcvt.s.w ft2, t0
	fcvt.s.w ft3, t1
	fdiv.s f22,ft2,ft3 #f22 para valor de normal
	
	
	li a7,4
	la a0,perguntaPeso
	ecall
	
	li a7,6
	ecall
	
	fdiv.s fa0,fa0,ft1	#resultado do IMC está em fa0
		
	flt.s t0, fa0, f18
	bne t0,zero,MENOSQUEOBESOIII
	
	li a7,4
	la a0, ResultadoobesidadeIII
	ecall
	ebreak
	
	
MENOSQUEOBESOIII:
	flt.s t0,fa0, f19
	bne t0,zero,MENOSQUEOBESOII
	
	li a7,4
	la a0, ResultadoobesidadeII
	ecall
	ebreak

MENOSQUEOBESOII:
	flt.s t0,fa0, f20
	bne t0,zero,MENOSQUEOBESOI
	
	li a7,4
	la a0, ResultadoobesidadeI
	ecall
	ebreak

MENOSQUEOBESOI:
	flt.s t0,fa0, f21
	bne t0,zero,MENOSQUESOBREPESO
	
	li a7,4
	la a0, Resultadosobrepeso
	ecall
	ebreak

MENOSQUESOBREPESO:
	flt.s  t0,fa0, f22
	bne t0,zero,MENOSQUENORMAL
	
	li a7,4
	la a0, Resultadonormal
	ecall
	ebreak
	
MENOSQUENORMAL:	
	li a7,4
	la a0, ResultadoInferior
	ecall
	ebreak

	
	
	
