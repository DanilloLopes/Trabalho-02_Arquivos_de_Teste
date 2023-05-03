programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		simulador_periculosidade()
	}
	funcao titulo_periculosidade()
	{
		escreva("           SIMULADOR DE ADICIONAL PERICULOSIDADE")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_periculosidade()
	{	
		cadeia valor_para_verificar = ""
		real salario_bruto
		logico numero_ou_nao = falso
		titulo_periculosidade()
		const cadeia TITULO = "           SIMULADOR DE ADICIONAL PERICULOSIDADE"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		escreva("\n")
		salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		numero_ou_nao = falso
		enquanto(numero_ou_nao == falso)
		{
			escreva("Digite a quantidade de horas trabalhadas no mês: ")
			leia(valor_para_verificar)
			numero_ou_nao = testador_de_numero(valor_para_verificar)
			se(numero_ou_nao == falso)
			{
				limpa()
				titulo_periculosidade()
				mensagem_erro(valor_para_verificar)
			}
		}
		escreva("\n")
		real horas_trabalhadas_mes = tp.cadeia_para_real(valor_para_verificar)
		numero_ou_nao = falso
		enquanto(numero_ou_nao == falso)
		{
			escreva("Digite a quantidade de horas extras trabalhadas no mês: ")
			leia(valor_para_verificar)
			numero_ou_nao = testador_de_numero(valor_para_verificar)
			se(numero_ou_nao == falso)
			{
				limpa()
				titulo_periculosidade()
				mensagem_erro(valor_para_verificar)
			}
		}
		escreva("\n")
		real horas_extras_trabalhadas = tp.cadeia_para_real(valor_para_verificar)
		const cadeia  PERGUNTA_QUE_A_FUNCAO_VAI_FAZER = "O colaborador é eletricitário?"
		cadeia sim_ou_nao = testador_sim_ou_nao(PERGUNTA_QUE_A_FUNCAO_VAI_FAZER, TITULO)
		real periculosidade
		escreva("\n\n")
	 	periculosidade = equacao_periculosidade(salario_bruto,horas_trabalhadas_mes, horas_extras_trabalhadas,  sim_ou_nao)
	 	periculosidade = m.arredondar(periculosidade, 2)
	 	real salario_liquido
	 	salario_liquido = salario_bruto +  periculosidade
	 	limpa()
	 	titulo_periculosidade()
	 	escreva("\n|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n")
	 	escreva("	Adic. de Periculosidade:	", periculosidade,"\n\n")
	 	escreva("  TOTAL:\n")
	 	escreva("	Sálario Líquido*:		",salario_liquido,"\n")
	 	escreva("|\n")
		tracinho_texto()
		escreva("|")
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
	funcao real equacao_periculosidade(real salario_bruto, real horas_trabalhadas_mes,real horas_extras_trabalhdas, cadeia sim_ou_nao)
	{	
		real valor_por_hora_extra, total_salario_e_hora_extra, valor_por_hora_com_periculosidade, valor_total_adicional_periculosidade, valor_total_hora_extra_periculosidade = 0.0, valor_por_hora
		caracter s_ou_n_periculosidade
		se(sim_ou_nao == "S")
		{		
			valor_por_hora = salario_bruto/horas_trabalhadas_mes
			valor_por_hora_com_periculosidade = 0.3 * (valor_por_hora + (valor_por_hora * 0.5))
			valor_total_adicional_periculosidade = valor_por_hora_com_periculosidade * horas_extras_trabalhdas
			valor_por_hora_extra = valor_por_hora * 0.5
			valor_por_hora_extra = valor_por_hora_extra * horas_extras_trabalhdas
			valor_total_hora_extra_periculosidade = valor_total_adicional_periculosidade + valor_por_hora_extra
			salario_bruto = salario_bruto + (salario_bruto * 0.3)
			valor_total_hora_extra_periculosidade = salario_bruto 
		}
		senao
		{		
			valor_por_hora = salario_bruto/horas_trabalhadas_mes
			valor_por_hora_com_periculosidade = valor_por_hora * 0.3
			valor_total_adicional_periculosidade = valor_por_hora_com_periculosidade * horas_extras_trabalhdas	
			valor_por_hora_extra = valor_por_hora * 0.5
			valor_por_hora_extra = valor_por_hora_extra * horas_extras_trabalhdas
			valor_total_hora_extra_periculosidade = valor_total_adicional_periculosidade + valor_por_hora_extra
			salario_bruto = salario_bruto + (salario_bruto * 0.3)
			valor_total_hora_extra_periculosidade = salario_bruto 
		}
		retorne valor_total_hora_extra_periculosidade 
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
 * @POSICAO-CURSOR = 3860; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */