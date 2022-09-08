// Agent pessoa in project initials.mas2j

/* Initial beliefs and rules */

/* 4) Crie um agente pessoa, adicione uma crença qualquer e utilize essa
crença para ativar um plano./objetivo, imprima uma mensagem que o plano 
foi ativado.

5)Crie dois agentes (pessoa e clima), agente clima contêm tipos possíveis
de clima/tempo (sol, chuva, neve...), agente pessoa receberá a crença do
agente clima, com isso ele tem a possibilidade de alguns planos, como por
exemplo, se estiver sol ele ativa plano de ir a praia, se estiver nevando
ativa ler um livro...  Faça planos para todas as possibilidades de clima.
*/
!saberClima.
//!sol.
//!chuva.
//!neve. 

/* Plans */
// a ideia é tentar ver se ele entrou no plano se não for segunda
//ativa o plano aqui, se não ativa outro como ponto de termino
//se for segunda, descanso off
//se não segunda, descanso on

+!descanso(on) <- 
.print("descanso on").

+!descanso(off) <-
.print("descanso off").

+!saberClima <-
.print("Identificando clima...");
.send(clima,askOne,tempo(Nome)).


+tempo(sol) <- .print(" dia de tomar sol").
+tempo(chuva) <- .print("dia de alagamento na cidade, melhor ficar home office").
+tempo(frio) <- .print("dia de ficar melancólico").


