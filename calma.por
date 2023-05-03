programa
{
	
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	funcao inicio()
	{
		simulador_de_vale_transporte()
	}
	funcao titulo_vale_transporte()
	{
		escreva("          SIMULADOR DE VALOR DE VALE TRANSPORTE")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_de_vale_transporte()
	{
		titulo_vale_transporte()
		
		real salario_bruto
		cadeia valor_para_verificar = ""
		logico numero_ou_nao = falso
		titulo_vale_transporte()
		const cadeia TITULO = "          SIMULADOR DE VALOR DE VALE TRANSPORTE"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		escreva("\n")
		salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		escreva("Digite o valor do passe de ônibus: ")
		real valor_passe
		leia(valor_passe)
		real valor_vale_transporte
		valor_vale_transporte = equacao_vale_transpote(salario_bruto)
		valor_vale_transporte = m.arredondar(valor_vale_transporte, 2)
		real valor_passe_mensal
		valor_passe_mensal = valor_passe * 20 * 4
		valor_passe_mensal = m.arredondar(valor_passe_mensal, 2)
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
	
	funcao real equacao_vale_transpote(real salario_bruto)
	{
		real valor_VT
		valor_VT = salario_bruto * 0.06
		retorne valor_VT
	}
	funcao mensagem_erro(cadeia texto)
	{
		escreva("ERRO!\n")
		escreva("O valor \"", texto ,"\" não é um valor válido!\n")	
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
 * @POSICAO-CURSOR = 654; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */