programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> m
	funcao inicio()
	{
		multa_do_FGTS()
	}
	funcao titulo_fgts()
	{
		escreva("              SIMULADOR DE MULTA FGTS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao multa_do_FGTS()
	{    real valor_fgts = 0.0, valor_multa_fgts = 0.0
		const real porcentagem_multa_por_acordo = 0.20
		const real porcentagem_multa_sem_acordo = 0.40
		cadeia sim_ou_nao
		titulo_fgts()
	 	inteiro i = 0
	 	enquanto(nao((i != 1 e i == 2) ou (i == 1 e i != 2)))
	 	{
	 		escreva("O colaborador dispensado foi demitido por justa causa?\n")
	 		escreva("[S] - Sim / [N] - Não\n")
	 		escreva("Resposta: ")
	 		leia(sim_ou_nao)
	 		sim_ou_nao = txt.caixa_alta(sim_ou_nao)
		 	se(sim_ou_nao == "S")
		 	{
				i++
		 	}
		 	senao se(sim_ou_nao == "N")
		 	{
		 		escreva("\n\n")
		 		escreva("Digite o valor total do FGTS: ")
				leia(valor_fgts)
				escreva("\n\n")
				enquanto (i != 2)
				{
					escreva("Foi feito um acordo para dispensa com a empresa?\n")
					escreva("[S] - Sim / [N] - Não\n")
					escreva("Resposta: ")
					leia(sim_ou_nao)
					sim_ou_nao = txt.caixa_alta(sim_ou_nao)
					se(sim_ou_nao == "S")
		 			{
						valor_multa_fgts = valor_fgts * porcentagem_multa_por_acordo
						i = 2
		 			}
		 			senao se(sim_ou_nao == "N")
		 			{
		 				valor_multa_fgts = valor_fgts * porcentagem_multa_sem_acordo
		 				i = 2
		 			}
		 			senao
		 			{
		 				limpa()
		 				titulo_fgts()
		 				escreva("ERRO!\n")
						escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n\n")
		 			}
				}
		 	}
		 	senao
		 	{
		 		limpa()
		 		titulo_fgts()
		 		escreva("ERRO!\n")
				escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n\n")
		 	}
	 	}
	 	real recisao = 0.0
	 	valor_fgts =m.arredondar(valor_fgts, 2)
	 	valor_multa_fgts = m.arredondar(valor_multa_fgts, 2)
	 	recisao = valor_fgts + valor_multa_fgts
	 	recisao = m.arredondar(recisao, 2)
	 	se(i == 1)
	 	{
	 		escreva("\n\n")
	 		tracinho_texto()
	 		escreva("\n\nNão há valor de recisão à receber, pois o colaborador foi demitido por justa causa.")
	 	}
	 	senao
	 	{
	 	limpa()
	 	titulo_fgts()
	 	escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  DETALHAMENTO:\n")
	 	escreva("	FGTS:			",valor_fgts,"\n\n")
	 	escreva("	Multa FGTS:		",valor_multa_fgts,"\n\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Recisão Total:		",recisao,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
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
 * @POSICAO-CURSOR = 2653; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */