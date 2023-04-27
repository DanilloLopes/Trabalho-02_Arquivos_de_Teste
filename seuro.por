programa
{
	inclua biblioteca Texto --> txt
	funcao inicio()
	{
		seguro_desemprego()
	}
	funcao titulo_seguro_desemprego()
	{
		escreva("        SIMULADOR DE DIREITO AO SEGURO-DESEMPREGO")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao seguro_desemprego()
	{
		titulo_seguro_desemprego()
	 	escreva("O requerente foi dispensado foi demitido por justa causa?\n")
	 	escreva("[S] - Sim / [N] - Não\n")
	 	escreva("Resposta: ")
	 	cadeia sim_ou_nao
	 	leia(sim_ou_nao)
	 	sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 	enquanto(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 	{
	 	limpa()
	 	titulo_seguro_desemprego()
	 	escreva("")
	 	escreva("ERRO!\n")
		escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n")
		escreva("Por favor, digite uma opção de válida para prosseguir.\n\n")
	 	escreva("O requerente foi dispensado foi demitido por justa causa?\n")
	 	escreva("[S] - Sim / [N] - Não\n")
	 	escreva("Resposta: ")
	 	leia(sim_ou_nao)
	 	sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 	}
	 	logico pode_receber_ou_nao
	 	inteiro quantidade_de_parcelas = 0
	 	se(sim_ou_nao == "S")
	 	{
		 	pode_receber_ou_nao = falso
	 	}
	 	senao
	 	{
	 		escreva("Digite quantas vezes o seguro-desemprego já foi solicitado: ")
		 	inteiro quantidade_de_solicitacoes
		 	leia(quantidade_de_solicitacoes)
		 	escreva("Digite a quantidade de meses que trabalhou: ")
		 	inteiro meses_trabalhados
		 	leia(meses_trabalhados)
		 	se(quantidade_de_solicitacoes == 0)
		 	{
		 		se(meses_trabalhados < 12)
		 		{
		 			pode_receber_ou_nao = falso
		 		}
		 		senao se(meses_trabalhados >= 12 e meses_trabalhados < 24)
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 4
		 		}
		 		senao
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 5
		 		}
		 	}
		 	senao se(quantidade_de_solicitacoes == 1)
		 	{
		 		se(meses_trabalhados < 9)
		 		{
		 			pode_receber_ou_nao = falso
		 		}
		 		senao se(meses_trabalhados >= 9 e meses_trabalhados < 12)
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 3
		 		}
		 		senao se(meses_trabalhados >= 12 e meses_trabalhados < 24)
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 4
		 		}
		 		senao
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 5
		 		}
		 	}
		 	senao
		 	{
		 		se(meses_trabalhados < 6)
		 		{
		 			pode_receber_ou_nao = falso
		 		}
		 		senao se(meses_trabalhados >= 6 e meses_trabalhados < 12)
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 3
		 		}
		 		senao se(meses_trabalhados >= 12 e meses_trabalhados < 24)
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 4
		 		}
		 		senao
		 		{
		 			pode_receber_ou_nao = verdadeiro
		 			quantidade_de_parcelas = 5
		 		}
		 	}
	 	}
	 	escreva("\n\n")
	 	tracinho_texto()
	 	se(pode_receber_ou_nao)
	 	{
	 		escreva("\n\n")
	 		escreva("O requerinte tem direito a receber o seguro desemprego, com direito a receber ",quantidade_de_parcelas," parcelas.")
	 	}
	 	senao
	 	{
	 		escreva("\n\n")
	 		escreva("O requerinte não tem direito de receber o seguro desemprego.")
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
 * @POSICAO-CURSOR = 3153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */