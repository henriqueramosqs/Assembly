.data 
	String: .string ""
.text
	li a7,5
	ecall
	
	addi a0,a0,1
	addi t0, a0,0  #tamanho da string est� em t0
	mv a1,a0
	la a0, String   #L� inteiro, soma 1 e coloca em a1; carrega label String dentro de a0

	li a7,8
	ecall         #L� string e armazena em String, cujo endere�o est� em a0
	mv a1,a0     #Endere�o de string agora est� em a1
	li t1,0
	
	addi t2,t0,-2
	mv a3, a1
	addi t0,t0,-1
Loop:	
	add a1,a3,t2
	
	lb a0,(a1)
	li a7,11
	ecall
	addi t2,t2,-1
	
	addi t1,t1,1
	beq t1,t0,Done  #Checa para que o loop aconte�a 20 vezes
	
	j Loop
		
Done:	li a7,10   #Exit
	ecall
	