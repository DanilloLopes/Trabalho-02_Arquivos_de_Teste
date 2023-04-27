programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		simulador_de_pis()
	}
	funcao titulo_pis()
	{
		escreva("                     SIMULADOR DE PIS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_de_pis()
	{
		titulo_pis()
	 	const real salario_minimo = 1302.00
	 	escreva("Digite a quantos anos o individuo está inscrito no PIS/PASEB: ")
	 	inteiro tempo_inscrito
	 	leia(tempo_inscrito)
	 	logico recebe_ou_nao
	 	inteiro meses_trabalhados = 0
	 	se(tempo_inscrito < 5)
	 	{
	 		recebe_ou_nao = falso
	 	}
	 	senao
	 	{
	 		escreva("Digite a quantidade de meses trabalhados no ano-base: ")
	 		leia(meses_trabalhados)
	 		enquanto(meses_trabalhados < 0 ou meses_trabalhados > 12)
	 		{
	 			limpa()
	 			titulo_pis()
	 			escreva("ERRO!\n")
				escreva("O valor \"", meses_trabalhados ,"\" não é uma valor válido!\n")
				escreva("Por favor, digite uma opção de válida para prosseguir.\n\n")
				escreva("Digite a quantidade de meses trabalhados no ano-base: ")
	 			leia(meses_trabalhados)
	 			limpa()
	 			titulo_pis()
	 		}
	 		se(meses_trabalhados < 1)
	 		{
	 			recebe_ou_nao = falso
	 		}
	 		senao
	 		{
	 			escreva("Digite o valor do sálario recebido mensalmente: ")
	 			real salario
	 			leia(salario)
	 			se(salario > (2 * salario_minimo))
	 			{
	 				recebe_ou_nao = falso
	 			}
	 			senao
	 			{
	 				escreva("Todos os dados preenchidos pelo empregador estão preenchidos correntamente?\n")
	 				escreva("[S] - Sim / [N] - Não\n")
	 				escreva("Resposta: ")
	 				cadeia sim_ou_nao
	 				leia(sim_ou_nao)
	 				sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 				enquanto(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 				{
	 					limpa()
	 					titulo_pis()
	 					escreva("ERRO!\n")
						escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n")
						escreva("Por favor, digite uma opção de válida para prosseguir.\n\n")
						escreva("Todos os dados preenchidos pelo empregador estão preenchidos correntamente?\n")
	 					escreva("[S] - Sim / [N] - Não\n")
	 					escreva("Resposta: ")
	 					leia(sim_ou_nao)
	 					sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 					limpa()
	 					titulo_pis()
	 				}
	 				se(sim_ou_nao == "N")
	 				{
	 					recebe_ou_nao = falso
	 				}
	 				senao
	 				{
	 					recebe_ou_nao = verdadeiro
	 				}
	 			}
	 		}
	 	}
	 	real valor_pis
	 	valor_pis = (salario_minimo / 12) * meses_trabalhados
	 	se(recebe_ou_nao)
	 	{
	 		limpa()
	 		titulo_pis()
	 		escreva("\n\n\n")
	 		escreva("|")
			tracinho_texto()
			escreva("|\n")
			escreva("|			RESULTADO			     |\n")
			escreva("|")
			tracinho_texto()
			escreva("|\n")
			escreva(" DETALHAMENTO:\n")
			escreva("	Valor PIS				",valor_pis,"\n")
			escreva("|")
			tracinho_texto()
			escreva("|\n")
	 	}
	 	senao
	 	{
	 		escreva("\n\n")
	 		tracinho_texto()
	 		escreva("\n\n")
	 		escreva("O requerinte não tem direito de receber o PIS.")
	 	}
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
 * @POSICAO-CURSOR = 2694; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */