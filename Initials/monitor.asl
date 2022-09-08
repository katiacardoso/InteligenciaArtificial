// Agent monitor in project initials.mas2j
/* 
1) Crie um agente monitor, esse agente tem um plano para imprimir 
uma mensagem "Olá, Tudo bem?". 
2) No agente monitor acima adicione que ele irá imprimir a mensagem 
apenas se ele tiver a crença que não é segunda.
3) Adicione a crença que não é segunda.
*/
~dia(segunda).

!start.
!imprimirDia.

/* Plans */
+!start : true <- .print("Ooi, tudo bem?.").

+!imprimirDia: ~dia(segunda)
<- .print("Dia diferente de segunda");
	.send(pessoa,achieve,descanso(on)).
	//achive porque ele tenta ativar o objetivo, então se pe segunda 
	//ele ativa o descanso

-!imprimirDia: true 
<- .print("hoje é segunda");
	.send(pessoa,achieve,descanso(off)).
	// e aqui, ele pede que a pessoa não descanse pois já é segunda
