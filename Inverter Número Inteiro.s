.text
	li a7,5
	ecall 	
	mv a1,a0  # Lê o inteiro e armazena em a1
	
	addi t0,t0,0    # R anterior inicializado em 0
		        # R atuais dicam em t1
	addi t3, t3,10  # Constante 10 fica armazenada em t3
	addi t4,t4,1    # Inicializa o dividendo em 1
		  
LOOP:
	sub a1,a1,t0	
	
	mul t5,t4,t3
		
	rem t1, a1, t5
	
	div t1, t1,t4
	mv  a0,t1
	
	li a7,1 # Printa o  dígito
	ecall
	
	mul t4,t4, t3
	mul t5,t4,t3	
				
	div t2, a1,t4
	bne t2, zero, LOOP  # Checa condição do loop
	
DONE:
	li a7,10 # Finaliza o programa
	ecall
	