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
//!sol.
//!chuva.
//!neve. 

/* Plans */
// a ideia � tentar ver se ele entrou no plano se n�o for segunda
//ativa o plano aqui, se n�o ativa outro como ponto de termino
//se for segunda, descanso off
//se n�o segunda, descanso on

+!descanso(on) <- 
.print("descanso on").

+!descanso(off) <-
.print("descanso off").

+!saberClima <-
.print("Identificando clima...");
.send(clima,askOne,tempo(Nome)).


+tempo(sol) <- .print(" dia de tomar sol").
+tempo(chuva) <- .print("dia de alagamento na cidade, melhor ficar home office").
+tempo(frio) <- .print("dia de ficar melanc�lico").


