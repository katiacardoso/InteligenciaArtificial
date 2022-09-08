// Agent calculadora in project Initials.mas2j

+!calcular(X,Z) <-
	//.print("2 Verificação de valores",X, "e" ,Z);
	W = X+Z;
	//.print("resultado soma: ", W). funciona mas deve ser respondido por pessoa
	.send(pessoa,tell,res(W)).
