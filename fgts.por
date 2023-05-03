programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	funcao inicio()
	{
		calcular_fgts_mensal()
	}
	funcao calcular_fgts_mensal()
	{
		limpa()
		escreva("       SIMULADOR DE DESCONTO DE DEPÓSITO FGTS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
		cadeia valor_para_verificar = ""
		real salario_bruto
		logico numero_ou_nao = falso
		const cadeia TITULO = "           SIMULADOR DE DESCONTO DE DEPÓSITO FGTS"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		escreva("\n")
		salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		real fgts
		fgts = equacao_fgts(salario_bruto)
		fgts = m.arredondar(fgts, 2)
		escreva("\n")
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
	funcao cadeia recebe_salario_bruto(logico numero_ou_nao, cadeia valor_para_verificar, cadeia nome_do_simulador_caso_erro)
	{
		enquanto(numero_ou_nao == falso)
		{
			escreva("Digite o valor do salário bruto: ")
			leia(valor_para_verificar)
			numero_ou_nao = testador_de_numero(valor_para_verificar)
			se(numero_ou_nao == falso)
			{
				limpa()
				escreva(nome_do_simulador_caso_erro)
				escreva("\n\n")
				tracinho_texto()
				escreva("\n\n")
				mensagem_erro(valor_para_verificar)
			}
		}
		retorne valor_para_verificar
	}
	funcao logico testador_de_numero(cadeia teste_de_valor)
	{
		logico retorno_de_valor
		inteiro auxiliar
		auxiliar = txt.posicao_texto(".", teste_de_valor, 0)
		se(auxiliar != -1)
		{
			retorno_de_valor = tp.cadeia_e_real(teste_de_valor)
		}
		senao
		{
			retorno_de_valor = tp.cadeia_e_inteiro(teste_de_valor, 10)
		}
		retorne retorno_de_valor
	}
	funcao mensagem_erro(cadeia texto)
	{
		escreva("ERRO!\n")
		escreva("O valor \"", texto ,"\" não é um valor válida!\n")	
		escreva("Digite um valor válido para prosseguir.\n\n")
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
 * @POSICAO-CURSOR = 161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */