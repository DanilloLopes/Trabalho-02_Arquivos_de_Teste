programa
{
	
	funcao inicio()
	{
		simulador_de_vale_transporte()
	}
	funcao titulo_vale_transporte()
	{
		escreva("        SIMULADOR DE VALOR DE VALE TRANSPORTE")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_de_vale_transporte()
	{
		titulo_vale_transporte()
		escreva("Digite o valor do salario bruto: ")
		real salario_bruto
		leia(salario_bruto)
		escreva("Digite o valor do passe de ônibus: ")
		real valor_passe
		leia(valor_passe)
		real valor_vale_transporte
		valor_vale_transporte = equacao_vale_transpote(salario_bruto)
		real valor_passe_mensal
		valor_passe_mensal = valor_passe * 20 * 4
		escreva("\n\n")
		tracinho_texto()
		escreva("\n\n")
		escreva("Gostaria de saber se o valor do vale transporte compensa em relação a compra mensal do passe de ônibus?")
		escreva("[S] - Sim / [N] - Não\n")
	 	escreva("Resposta: ")
	 	cadeia sim_ou_nao
	 	leia(sim_ou_nao)
	 	enquanto(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 	{
	 		limpa()
	 		titulo_vale_transporte()
	 		escreva("ERRO!\n")
			escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n")
			escreva("Por favor, digite uma opção de válida para prosseguir.\n\n")
			escreva("Gostaria de saber se o valor do vale transporte compensa em relação a compra mensal do passe de ônibus?")
			escreva("[S] - Sim / [N] - Não\n")
	 		escreva("Resposta: ")
	 		leia(sim_ou_nao)
			limpa()
	 		titulo_vale_transporte()
	 	}
	 	se(sim_ou_nao == "S")
	 	{
			se(valor_vale_transporte > valor_passe_mensal)
			{
				escreva("\n")
				escreva("Escolher a opção de receber vale transporte não compensa mediante ao valor do salario, pois:\n\n")
				escreva("O valor que será descontado é de R$",valor_vale_transporte,";\n\n")
				escreva("O valor que será gasto mensalemte caso seja feita a compra do passe é de R$ ",valor_passe_mensal,".\n\n")
				escreva("Com isso é indicado que seja feita a escolha da compra da passagem em vez da escolha do desconto do vale transporte.")
			}
			senao
			{
				escreva("\n")
				escreva("Escolher a opção de receber vale transporte compensa mediante ao valor do salario, pois:\n\n")
				escreva("O valor que será descontado é de R$",valor_vale_transporte,";\n\n")
				escreva("O valor que será gasto mensalemte caso seja feita a compra do passe é de R$ ",valor_passe_mensal,".\n\n")
				escreva("Com isso é indicado que seja feita a escolha do desconto do vale transporte em vez da escolha da compra da passagem.")
			}
	 	}
	}
	funcao real equacao_vale_transpote(real salario_bruto)
	{
		real valor_VT
		valor_VT = salario_bruto * 0.06
		retorne valor_VT
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
 * @POSICAO-CURSOR = 76; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */