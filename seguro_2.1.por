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
	 	demitido_por_justa_causa()
	}
	funcao demitido_por_justa_causa()
	{
		escreva("O requerente foi demitido por justa causa?\n")
	 	escreva("[S] - Sim / [N] - Não\n")
	 	escreva("Resposta: ")
	 	inteiro verificador
	 	verificador = verificador_de_sim_ou_nao()
	 	inteiro quantidade_de_parcelas
	 	logico pode_receber_ou_nao
	 	se(verificador == 1)
	 	{
	 		pode_receber_ou_nao = falso
	 	}
	 	senao se(verificador == 2)
	 	{

	 	}
	 	senao
	 	{
	 		escreva("ERRO!\n")
			escreva("O valor digitado não é uma opção válida!\n\n")
	 		demitido_por_justa_causa()
	 	}
	}
	funcao inteiro verificador_de_sim_ou_nao()
	{
		cadeia sim_ou_nao
		leia(sim_ou_nao)
		sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 	se(sim_ou_nao == "S")
	 	{
	 		retorne 1
	 	}
	 	senao se(sim_ou_nao == "N")
	 	{
	 		retorne 2
	 	}
	 	senao
	 	{
			retorne 0
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
 * @POSICAO-CURSOR = 703; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */