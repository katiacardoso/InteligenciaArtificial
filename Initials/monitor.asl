// Agent monitor in project initials.mas2j
/* 
1) Crie um agente monitor, esse agente tem um plano para imprimir 
uma mensagem "Ol�, Tudo bem?". 
2) No agente monitor acima adicione que ele ir� imprimir a mensagem 
apenas se ele tiver a cren�a que n�o � segunda.
3) Adicione a cren�a que n�o � segunda.
*/
~dia(segunda).

!start.
!imprimirDia.

/* Plans */
+!start : true <- .print("Ooi, tudo bem?.").

+!imprimirDia: ~dia(segunda)
<- .print("Dia diferente de segunda");
	.send(pessoa,achieve,descanso(on)).
	//achive porque ele tenta ativar o objetivo, ent�o se pe segunda 
	//ele ativa o descanso

-!imprimirDia: true 
<- .print("hoje � segunda");
	.send(pessoa,achieve,descanso(off)).
	// e aqui, ele pede que a pessoa n�o descanse pois j� � segunda
