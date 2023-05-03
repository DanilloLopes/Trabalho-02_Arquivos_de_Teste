programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	inclua biblioteca ServicosWeb --> sw
	inclua biblioteca Arquivos --> a
	funcao inicio()
	{
		 multa_do_FGTS()
	}
	funcao titulo_multa_fgts()
	{
		escreva("              SIMULADOR DE MULTA FGTS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao multa_do_FGTS()
	{   
		limpa()
		real valor_fgts = 0.0, valor_multa_fgts = 0.0
		cadeia valor_para_verificar = ""
		const real porcentagem_multa_por_acordo = 0.20
		const real porcentagem_multa_sem_acordo = 0.40
		const cadeia TITULO = "              SIMULADOR DE MULTA FGTS"
		titulo_multa_fgts()
	 	inteiro i = 0
	 	cadeia perunta_s_ou_n = "O colaborador dispensado foi demitido por justa causa?"
	 	cadeia sim_ou_nao = testador_sim_ou_nao(perunta_s_ou_n, TITULO)
	 	logico numero_ou_nao = falso
	 	se(sim_ou_nao == "S")
		 	{
				i++
		 	}
		 	senao
		 	{
				enquanto(numero_ou_nao == falso)
				{
					escreva("\n\n")
		 			escreva("Digite o valor total do FGTS: ")
					leia(valor_para_verificar)
					numero_ou_nao = testador_de_numero(valor_para_verificar)
					se(numero_ou_nao == falso)
					{
						limpa()
						titulo_multa_fgts()
						mensagem_erro(valor_para_verificar)
					}
				}
				valor_fgts = tp.cadeia_para_real(valor_para_verificar)
				perunta_s_ou_n = "Foi feito um acordo para dispensa com a empresa?"
				sim_ou_nao = testador_sim_ou_nao(perunta_s_ou_n, TITULO)
				se(sim_ou_nao == "S")
		 		{
					valor_multa_fgts = valor_fgts * porcentagem_multa_por_acordo
		 		}
		 		senao
		 		{
		 			valor_multa_fgts = valor_fgts * porcentagem_multa_sem_acordo
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
		 	titulo_multa_fgts()
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
	funcao mensagem_erro(cadeia texto)
	{
		escreva("ERRO!\n")
		escreva("O valor \"", texto ,"\" não é um valor válida!\n")	
		escreva("Digite um valor válido para prosseguir.\n\n")
	}
	funcao cadeia testador_sim_ou_nao(cadeia pergunta_que_a_funcao_vai_fazer, cadeia nome_do_simulador_caso_erro)
	{
		cadeia sim_ou_nao = ""
		enquanto(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 	{
	 		escreva(pergunta_que_a_funcao_vai_fazer)
	 		escreva("\n[S] - Sim / [N] - Não\n")
	 		escreva("Resultado: ")
	 		leia(sim_ou_nao)
	 		sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 		se(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 		{
	 			limpa()
	 			escreva(nome_do_simulador_caso_erro)
				escreva("\n\n")
				tracinho_texto()
				escreva("\n\n")
	 			mensagem_erro(sim_ou_nao)	
	 		}
	 	}
	 	retorne sim_ou_nao
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
 * @POSICAO-CURSOR = 4354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */