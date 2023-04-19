programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
	 	calculo_de_ferias()
	}
	funcao calculo_de_ferias()
	{
		real salario, adicional_de_ferias, salario_liquido
	 	escreva("--------------------------------------\n")
	 	escreva("----SIMULADOR DE CÁLCULO DE FÉRIAS----\n")
	 	escreva("--------------------------------------")
	 	escreva("\n\n\n")
	 	escreva("Valor do sálario bruto: ")
	 	leia(salario)
	 	adicional_de_ferias = salario / 3
	 	adicional_de_ferias = m.arredondar(adicional_de_ferias, 2)
	 	salario_liquido = salario + adicional_de_ferias
	 	escreva("\n\n")
	 	escreva("-------------DETALHAMENTO-------------")
	 	escreva("\n\n")
	 	escreva("Valor do adicional de férias: ", adicional_de_ferias)
	 	escreva("\n\n")
	 	escreva("-----------RESULTADO (TOTAL)----------")
	 	escreva("\n\n")
	 	escreva("Valor do sálario líquido: ", salario_liquido)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 874; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */