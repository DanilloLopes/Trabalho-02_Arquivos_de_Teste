programa
{
	
	funcao inicio()
	{
		seguro_desemprego()
	}
	funcao seguro_desemprego()
	{
		escreva("        SIMULADOR DE DIREITO AO SEGURO-DESEMPREGO")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	 	escreva("Digite quantas vezes o seguro-desemprego já foi solicitado: ")
	 	inteiro quantidade_de_solicitacoes
	 	leia(quantidade_de_solicitacoes)
	 	escreva("Digite a quantidade de meses que trabalhou: ")
	 	inteiro meses_trabalhados
	 	leia(meses_trabalhados)
	 	inteiro quantidade_de_parcelas
	 	logico pode_receber_ou_nao
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
	 	escreva("\n\n")
	 	tracinho_texto()
	 	se(pode_receber_ou_nao)
	 	{
	 		escreva("Voc")
	 	}
	 	senao
	 	{
	 		
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
 * @POSICAO-CURSOR = 1973; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */