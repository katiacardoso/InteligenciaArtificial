// Agent pessoa in project initials.mas2j
/* Initial beliefs and rules */
/* 4) Crie um agente pessoa, adicione uma cren�a qualquer e utilize essa
cren�a para ativar um plano./objetivo, imprima uma mensagem que o plano 
foi ativado.
5)Crie dois agentes (pessoa e clima), agente clima cont�m tipos poss�veis
de clima/tempo (sol, chuva, neve...), agente pessoa receber� a cren�a do
agente clima, com isso ele tem a possibilidade de alguns planos, como por
exemplo, se estiver sol ele ativa plano de ir a praia, se estiver nevando
ativa ler um livro...  Fa�a planos para todas as possibilidades de clima.
*/
!saberClima.

!chamarCalculadora(1,2).
//!sol.
//!chuva.
//!neve. 


+!descanso(on) <- .print("descanso on").

+!descanso(off) <- .print("descanso off").

+!saberClima <-
.print("Identificando clima...");
.send(clima,askOne,tempo(Nome));
.wait(1000);
!analiseClima.

+!chamarCalculadora(X,Z) <-
	.print("Soma dos Valores:",X, "e" ,Z);
	.send(calculadora,achieve,calcular(X,Z)).
	//+res(W).
	
+res(W) <-
.print("Resultado do calculo:", W).
	
+!analiseClima: tempo(frio) <-
.print("dia de ficar melanc�lico").

+!analiseClima: tempo(sol) <-
.print("dia de tomar sol").

+!analiseClima: tempo(chuva) <-
.print("dia de alagamento na cidade, melhor ficar home office").

-!analiseClima: true <-
.print("clima nao identificado").
 



