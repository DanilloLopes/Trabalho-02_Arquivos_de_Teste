programa
{
	inclua biblioteca Texto --> txt
	
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
	 	cadeia sim_ou_nao
	 	sim_ou_nao = demitido_por_justa_causa()
	 	
	}
	funcao cadeia demitido_por_justa_causa()
	{
		escreva("O requerente foi demitido por justa causa?\n")
	 	escreva("[S] - Sim / [N] - Não\n")
	 	escreva("Resposta: ")
	 	cadeia sim_ou_nao
	 	leia(sim_ou_nao)
	 	sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 	enquanto((sim_ou_nao == "S" e sim_ou_nao == "N") ou (sim_ou_nao != "S" e sim_ou_nao != "N"))
	 	{
	 		escreva("Erro!\n")
	 		demitido_por_justa_causa()
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
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */