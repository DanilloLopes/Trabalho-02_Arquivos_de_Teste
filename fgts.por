programa
{
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		calcular_fgts_mensal()
	}
	funcao calcular_fgts_mensal()
	{
		escreva("Insira o valor do sálario bruto: ")
		real salario_bruto
		leia(salario_bruto)
		real fgts
		fgts = equacao_fgts(salario_bruto)
		fgts = m.arredondar(fgts, 2)
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n\n")
	 	escreva("  Depósito FGTS:\n")
	 	escreva("	Valor FGTS:			",fgts,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
	}
	funcao real equacao_fgts(real salario_bruto)
	{
		real valor_fgts
		valor_fgts = salario_bruto * 0.08
		retorne valor_fgts
	}
	funcao tracinho_texto()
	{
		para(inteiro i = 1; i <= 60; i++)
		{
		  escreva ("-")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */