programa
{
	
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	funcao inicio()
	{
		simulador_folha_de_pagamento()
	}
	funcao titulo_do_simulador_pagamento()
	{
		escreva("                   FOLHA DE PAGAMENTO")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_folha_de_pagamento()
	{    
		limpa()
		real salario_bruto, horas_extras_feitas_mes, horas_noturnas_feitas_mes, horas_trabalhadas_mes = 220.0
		real valor_vale_transporte, hora_extra, noturno, periculosidade, irrf, inss, fgts, total_adicionais, total_descontos
		cadeia s_ou_n_adicional_periculosidade, s_ou_n_adicional_VT
		cadeia valor_para_verificar = ""
		titulo_do_simulador_pagamento()
		logico numero_ou_nao = falso
		const cadeia TITULO = "             FOLHA DE PAGAMENTO"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		escreva("\n")
		faca
		{
			escreva("Digite a quantidade de horas extras trabalhadas neste mês: ")
			leia(valor_para_verificar)
			numero_ou_nao = testador_de_numero(valor_para_verificar)
			se(numero_ou_nao == falso)
			{
				limpa()
				titulo_do_simulador_pagamento()
				mensagem_erro(valor_para_verificar)
			}
		}enquanto(numero_ou_nao == falso)
	 	horas_extras_feitas_mes = tp.cadeia_para_real(valor_para_verificar)
		escreva("\n")
		faca
		{
			escreva("Digite a quantidade de horas noturnas trabalhadas neste mês: ")
			leia(valor_para_verificar)
			numero_ou_nao = testador_de_numero(valor_para_verificar)
			se(numero_ou_nao == falso)
			{
				limpa()
				titulo_do_simulador_pagamento()
				mensagem_erro(valor_para_verificar)
			}
		}enquanto(numero_ou_nao == falso)
	 	horas_noturnas_feitas_mes = tp.cadeia_para_real(valor_para_verificar)
	 	escreva("\n")
		cadeia  pergunta = "Recebe adicional por periculosidade?"
		s_ou_n_adicional_periculosidade = testador_sim_ou_nao(pergunta, TITULO)
		escreva("\n")
		pergunta = "Há desconto de vale transporte?"
		s_ou_n_adicional_VT = testador_sim_ou_nao(pergunta, TITULO)
	 	escreva("\n")
	 	se(s_ou_n_adicional_VT == "S")
	 	{
			valor_vale_transporte = equacao_vale_transpote(salario_bruto)
			valor_vale_transporte = m.arredondar(valor_vale_transporte, 2)
	 	}
	 	senao
	 	{
	 		valor_vale_transporte = 0.0
	 	}
	 	
	 	hora_extra = equacao_hora_extra(salario_bruto, horas_trabalhadas_mes, horas_extras_feitas_mes)
	 	hora_extra = m.arredondar(hora_extra, 2)
	 	
	 	noturno = equacao_adicional_noturno(salario_bruto, horas_trabalhadas_mes, horas_noturnas_feitas_mes)
	 	noturno = m.arredondar(noturno, 2)
		se(s_ou_n_adicional_VT == "S")
	 	{
			periculosidade = equacao_periculosidade(salario_bruto)
	 		periculosidade = m.arredondar(periculosidade, 2)
	 	}
	 	senao
	 	{
	 		periculosidade = 0.0
	 	}
	 	
		total_adicionais = periculosidade + hora_extra + noturno
		real salario_mais_adicionais = total_adicionais + salario_bruto
		total_adicionais = m.arredondar(total_adicionais, 2)
		
	 	fgts = equacao_fgts(salario_mais_adicionais)
		fgts = m.arredondar(fgts, 2)

	 	irrf = equacao_imposto_de_renda(salario_mais_adicionais)
	 	irrf = m.arredondar(irrf, 2)

		inss = equacao_inss(salario_mais_adicionais)
	 	inss = m.arredondar(inss, 2)

		salario_bruto = m.arredondar(salario_bruto, 2)

	 	real salario_liquido, salario_adicional_periculosidade

	 	total_descontos = valor_vale_transporte + inss + irrf
	 	salario_liquido = salario_bruto + total_adicionais - total_descontos







		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n")
		escreva("	Adicional de periculosidade:	",periculosidade,"\n")
		escreva("	Adicional noturno:		",noturno,"\n")
		escreva("	Adicional de hora extra:		",noturno,"\n")
		escreva("	FGTS(depósito):				",fgts,"\n\n")
		escreva("	Total de proventos:		",total_adicionais,"\n\n")
	 	escreva("  DESCONTOS:\n")
	 	escreva("	INSS:				",inss,"\n\n")
	 	escreva("	IRRF:			",irrf,"\n")
	 	escreva("	Vale transporte:		",valor_vale_transporte,"\n")
	 	escreva("	Total de Descontos:		",total_descontos,"\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido:		",salario_liquido,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
	 
	}
	funcao real equacao_hora_extra(real salario_bruto, real horas_trabalhadas_mes,real horas_extras_feitas_mes)
	{
		real valor_por_hora, valor_por_hora_extra, total_salario_e_hora_extra

		valor_por_hora = salario_bruto/horas_trabalhadas_mes
		valor_por_hora_extra = valor_por_hora + (valor_por_hora * 0.5)
		valor_por_hora_extra = valor_por_hora_extra * horas_extras_feitas_mes
		
		retorne valor_por_hora_extra 
	}
	funcao real equacao_fgts(real salario_bruto)
	{
		real valor_fgts
		valor_fgts = salario_bruto * 0.08
		retorne valor_fgts
	}
	funcao real equacao_adicional_noturno(real salario_bruto, real horas_trabalhadas_mes,real horas_noturnas_feitas_mes)	
	{
		real  valor_da_hora, acrecimo_hora_noturna_trabalhada , valor_adicional_noturno ,conversao_horas_em_minutos 
		
		conversao_horas_em_minutos = horas_noturnas_feitas_mes * 60
		horas_noturnas_feitas_mes = conversao_horas_em_minutos / 52.5
		
		valor_da_hora = salario_bruto/horas_trabalhadas_mes
          acrecimo_hora_noturna_trabalhada = valor_da_hora * 0.2  
          
   		valor_adicional_noturno = horas_noturnas_feitas_mes * acrecimo_hora_noturna_trabalhada
		
		retorne valor_adicional_noturno

		
	}
	
	funcao real equacao_periculosidade(real salario_bruto)
	{	
		real valor_periculosidade 

		valor_periculosidade = salario_bruto * 0.3
		

			retorne valor_periculosidade 


	}
	funcao real equacao_inss(real salario_bruto)
	{	
		const real PISO_SALARIAL_1 = 1302.00
		const real PISO_SALARIAL_2 = 2571.29
		const real PISO_SALARIAL_3 = 3856.94
		const real PISO_SALARIAL_4 = 7507.49
		real desconto_aliquota_1, desconto_aliquota_2, desconto_aliquota_3, valor_inss
										
		se(salario_bruto <= PISO_SALARIAL_1)
		{
			valor_inss = (0.075 * salario_bruto) 
		}
		
		senao se(salario_bruto > PISO_SALARIAL_1 e salario_bruto <= PISO_SALARIAL_2)
		{
			desconto_aliquota_1 = (0.075  * PISO_SALARIAL_1) 
			valor_inss = 0.09 * (salario_bruto - PISO_SALARIAL_1) + desconto_aliquota_1
		}
		senao se(salario_bruto > PISO_SALARIAL_2 e salario_bruto <= PISO_SALARIAL_3)
		{    
			desconto_aliquota_1 = (0.075  * PISO_SALARIAL_1) 
			desconto_aliquota_2 = 0.09 * ( PISO_SALARIAL_2 - PISO_SALARIAL_1)
			valor_inss = 12.0/100.0 * (salario_bruto - PISO_SALARIAL_2) + desconto_aliquota_1 + desconto_aliquota_2
		}
		senao se(salario_bruto > PISO_SALARIAL_3 e salario_bruto <= PISO_SALARIAL_4)
		{
          	desconto_aliquota_1 = 0.075  * PISO_SALARIAL_1
			desconto_aliquota_2 = 0.09 * ( PISO_SALARIAL_2 - PISO_SALARIAL_1)
			desconto_aliquota_3 = 0.12 * (PISO_SALARIAL_3 - PISO_SALARIAL_2) 	
			valor_inss = 0.14 * ( salario_bruto -  PISO_SALARIAL_3) + desconto_aliquota_1 + desconto_aliquota_2 +desconto_aliquota_3
          }
          senao
          {
          	desconto_aliquota_1 = 0.075  * PISO_SALARIAL_1
			desconto_aliquota_2 = 0.09 * ( PISO_SALARIAL_2 - PISO_SALARIAL_1)
			desconto_aliquota_3 = 0.12 * (PISO_SALARIAL_3 - PISO_SALARIAL_2) 
          	valor_inss = 0.14 * ( PISO_SALARIAL_4 - PISO_SALARIAL_3) + desconto_aliquota_3 + desconto_aliquota_2 + desconto_aliquota_1
          }
          retorne valor_inss
	}
	funcao real equacao_imposto_de_renda(real salario_bruto)
	{    
		const real FAIXA_1= 1903.98 
		const real FAIXA_2= 2826.65
		const real FAIXA_3 = 3751.05
		const real FAIXA_4= 4664.68
		const real VALOR_DEDUZIDO_DA_ALIQUOTA_1 = 142.80 
		const real VALOR_DEDUZIDO_DA_ALIQUOTA_2 = 354.80
		const real VALOR_DEDUZIDO_DA_ALIQUOTA_3 = 636.13
		const real VALOR_DEDUZIDO_DA_ALIQUOTA_4 = 869.36
		real inss, salario_descontado_inss, valor_aliquota
		inss = equacao_inss(salario_bruto)
		salario_descontado_inss = salario_bruto - inss
		real  valor_irrf
          se(salario_descontado_inss <= FAIXA_1)
          {
          	valor_irrf = 0.0
          }
          senao se(salario_descontado_inss > FAIXA_1 e salario_descontado_inss <= FAIXA_2)
		{
			valor_aliquota = 0.075 * salario_descontado_inss
			valor_irrf = valor_aliquota - VALOR_DEDUZIDO_DA_ALIQUOTA_1 
		}
		senao se(salario_descontado_inss > FAIXA_2 e salario_descontado_inss <= FAIXA_3)
		{
			valor_aliquota = 0.15 * salario_descontado_inss
			valor_irrf = valor_aliquota - VALOR_DEDUZIDO_DA_ALIQUOTA_2 
		}
		senao se(salario_descontado_inss > FAIXA_3 e salario_descontado_inss <= FAIXA_4)
		{
			valor_aliquota = 0.225 * salario_descontado_inss
			valor_irrf = valor_aliquota - VALOR_DEDUZIDO_DA_ALIQUOTA_3 
		}
		senao 
		{
			valor_aliquota = 0.275 * salario_descontado_inss
			valor_irrf = valor_aliquota - VALOR_DEDUZIDO_DA_ALIQUOTA_4 
		}
		retorne valor_irrf
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
		faca
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
		}enquanto(numero_ou_nao == falso)
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
 * @POSICAO-CURSOR = 4321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */