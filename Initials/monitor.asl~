// Agent monitor in project Initials.mas2j


/* 
1) Crie um agente monitor, esse agente tem um plano para imprimir uma 
mensagem "Olá, Tudo bem?".

2) No agente monitor acima adicione que ele irá imprimir a mensagem apenas se
ele tiver a crença que não é segunda.

3) Adicione a crença que não é segunda.*/

~dia(segunda). //crença de que ele bão terá a segunda
//para negar uma crença se usa ~

/* Initial goals */
!bomdia.
!start. //plano

/* Plans */
+!bomdia: true <-
.print("ola, tudo bem ?").

+!start: dia(segunda) <-
	.print("hoje e segunda").

//este funciona mais como negação da crença	
+!start: ~dia(segunda) <-	
	.print("hoje nao e segunda").

/* mesma coisa do de cima, porém funciona como ponto de parada
-!start: true <-	
	.print("hoje nao e segunda"). 
*/

