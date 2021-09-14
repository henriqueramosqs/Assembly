.text
	li a7, 5
	ecall
	mv a1,a0  #Lê input 1 e aramazena em a1
	
	li a7, 5
	ecall
	mv a2,a0 #Lê input 2 e armazena em a2
		
	sgt t0, a1,a2
	 
	beq a0,zero, A2_maior
	j A1_maior
	
A2_maior:
	mv a0, a2  #Coloca  o  maior em a0, menor em a1
	j DONE

A1_maior:
	mv a0, a1  #Coloca o maior em a0, menor em a1
	mv a1,a2
	j DONE

DONE:
   	add t0, a0, zero
 
Loop1:
   	rem t3,a0,t0
   	bne t3,zero,Dimto
   	rem t3, a1,t0
   	bne t3, zero, Dimto
   	
   	li a7, 1   	#se o resto da divisão dos dois números por t0 for 0, printa t0
   	mv a0, t0
   	ecall
   	
   	li a7,10
   	ecall	
   	
Dimto:
	addi t0,t0 -1
	j Loop1
   	
	