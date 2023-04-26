programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> txt

	inteiro ler_titulo_ou_nao = 0 
	
	funcao inicio()
	{
		se(ler_titulo_ou_nao != 1)
		{
			titulo_menu()
		}
		senao
		{
			menu()
		}
		cadeia opcao_escolhida
		leia(opcao_escolhida)
		seletor_de_programa(opcao_escolhida)
	}
	funcao titulo_menu()
	{
	 	escreva("                SISTEMA MULTITAREFAS DO RH\n")
	 	ut.aguarde(500)
	 	escreva("\n\n")
	 	inteiro horario
		horario = c.hora_atual(falso)
	 	se(horario >= 6 e horario < 12)
	 	{
	 		escreva("Bom dia, seja bem vindo ao sistema multitarefas!")
	 		escreva("\n")
	 	}
	 	senao se(horario >=12 e horario < 18)
	 	{
	 		escreva("Boa tarde, seja bem vindo ao sistema multitarefas!")
	 		escreva("\n")
	 	}
	 	senao
	 	{
	 		escreva("Boa noite, seja bem vindo ao sistema multitarefas!")
	 		escreva("\n")
	 	}
	 	ut.aguarde(500)
	 	escreva("Selecione uma opção abaixo para prosseguir:")
	 	escreva("\n\n")
	 	menu()
	}
	funcao menu()
	{
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|                           MENU                             |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		ut.aguarde(100)
		escreva("|[1]  - Simulador de desconto salarial do INSS               |\n")
		ut.aguarde(100)
	 	escreva("|[2]  - Simulador de bonificação salarial das férias         |\n")
	 	ut.aguarde(100)
	 	escreva("|[3]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[4]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[5]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[6]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[7]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[8]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[9]  -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[10] -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[11] -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[12] -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[13] -                                                      |\n")
	 	ut.aguarde(100)
	 	escreva("|[14] - Finalizar programa.                                  |\n")
	 	ut.aguarde(100)
	 	escreva("|")
		tracinho_texto()
		escreva("|\n")
	 	escreva("\n\n")
	 	escreva("Opção escolhida: ")
	}
	funcao seletor_de_programa(cadeia opcao_escolhida)
	{
		se(opcao_escolhida == "1")
		{
			calcaladora_so_do_inss()
		}
		senao se(opcao_escolhida == "2")
		{
			simulador_bon_ferias()
		}
		senao se(opcao_escolhida == "3")
		{
			calcular_imposto_de_renda()
		}
		senao se(opcao_escolhida == "4")
		{
			calcular_fgts_mensal()
		}
		senao se(opcao_escolhida == "5")
		{
			multa_do_FGTS()
		}
		senao se(opcao_escolhida == "6")
		{
			
		}
		senao se(opcao_escolhida == "7")
		{
			
		}
		senao se(opcao_escolhida == "8")
		{
			
		}
		senao se(opcao_escolhida == "9")
		{
			
		}
		senao se(opcao_escolhida == "10")
		{
			
		}
		senao se(opcao_escolhida == "11")
		{
			
		}
		senao se(opcao_escolhida == "12")
		{
			
		}
		senao se(opcao_escolhida == "13")
		{
			
		}
		senao se(opcao_escolhida == "14")
		{
			
		}
		senao
		{
			limpa()
			ler_titulo_ou_nao = 1
			escreva("ERRO!\n")
			escreva("O valor \"", opcao_escolhida ,"\" não é uma opção válida!\n")
			escreva("Por favor, digite uma opção de 1 a 14 para prosseguir:")
			escreva("\n\n")
			inicio()
		}
		
	}
	funcao calcaladora_so_do_inss()
	{
		limpa()
		real salario_bruto, inss
		escreva("              SIMULADOR DE DESCONTO DE INSS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	 	escreva("Insira o valor do salario bruto: ")
	 	leia(salario_bruto)
	 	escreva("\n\n")
	 	inss = equacao_inss(salario_bruto)
	 	inss = m.arredondar(inss, 2)
	 	real salario_liquido
	 	salario_liquido = salario_bruto - inss
	 	escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n\n")
	 	escreva("  DESCONTOS:\n")
	 	escreva("	INSS:				",inss,"\n\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido*:		",salario_liquido,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
	 	escreva("\n*O valor do sálario liquido só leva em conta o desconto do INSS, para acessar\n")
	 	escreva("o valor completo de bonificações e descontos acesse a opção xxx do menu princial.")
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
	funcao simulador_bon_ferias()
	{
	 	limpa()
	 	real salario_bruto, bonificacao_ferias, inss, total_de_proventos, total_de_descontos, salario_liquido
	 	escreva("              SIMULADOR DE BONIFICAÇÃO DE FÉRIAS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	 	escreva("Insira o valor do salario bruto: ")
	 	leia(salario_bruto)
		bonificacao_ferias = salario_bruto/3
		bonificacao_ferias = m.arredondar(bonificacao_ferias, 2)
		total_de_proventos = salario_bruto + bonificacao_ferias
		real irrf
	 	irrf = equacao_imposto_de_renda(total_de_proventos)
	 	irrf = m.arredondar(irrf, 2)
	 	inss = equacao_inss(total_de_proventos)
		inss = m.arredondar(inss, 2)
	 	total_de_descontos = inss + irrf
	 	total_de_descontos = m.arredondar(total_de_descontos, 2)
	 	salario_liquido = total_de_proventos - total_de_descontos
	 	salario_liquido = m.arredondar(salario_liquido, 2)
		escreva("\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n")
	 	escreva("	Bonificação de férias:		",bonificacao_ferias,"\n")
	 	escreva("	Total de proventos:		",total_de_proventos,"\n\n")
	 	escreva("  DESCONTOS:\n")
	 	escreva("	INSS:				",inss,"\n")
	 	escreva("	IRRF				",irrf,"\n")
	 	escreva("	TOTAL DE DESCONTOS:		",total_de_descontos,"\n\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido			",salario_liquido,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
	 	escreva("\n*As férias especificadas são de 30 dias completos, não levando em conta\n")
	 	escreva("abono pecuniário e nem horas extras.")
	}
	funcao calcular_imposto_de_renda()
	{
		limpa()
		escreva("              SIMULADOR DE DESCONTO DE IRRF")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
		real salario_bruto
	 	escreva("Insira o valor do salario bruto: ")
	 	leia(salario_bruto)
	 	real irrf
	 	irrf = equacao_imposto_de_renda(salario_bruto)
	 	irrf = m.arredondar(irrf, 2)
	 	real salario_liquido
	 	salario_liquido = salario_bruto - irrf
	 	escreva("\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n\n")
	 	escreva("  DESCONTOS:\n")
	 	escreva("	IRRF:				",irrf,"\n\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido*:		",salario_liquido,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
	 	escreva("\n*O valor do sálario liquido só leva em conta o desconto do IRRF, para acessar\n")
	 	escreva("o valor completo de bonificações e descontos acesse a opção xxx do menu princial.")
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
	funcao calcular_fgts_mensal()
	{
		limpa()
		escreva("       SIMULADOR DE DESCONTO DE DEPÓSITO FGTS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
		escreva("Insira o valor do sálario bruto: ")
		real salario_bruto
		leia(salario_bruto)
		real fgts
		fgts = equacao_fgts(salario_bruto)
		fgts = m.arredondar(fgts, 2)
		escreva("\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|")
		tracinho_texto()
		escreva("|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n\n")
	 	escreva("  Depósito FGTS:\n")
	 	escreva("	Valor FGTS:			",fgts,"\n")
	 	escreva("|")
		tracinho_texto()
		escreva("|")
	}
	funcao real equacao_fgts(real salario_bruto)
	{
		real valor_fgts
		valor_fgts = salario_bruto * 0.08
		retorne valor_fgts
	}
	funcao titulo_fgts()
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
 * @POSICAO-CURSOR = 13394; 
 * @DOBRAMENTO-CODIGO = [23, 50, 94, 164, 198, 238, 284, 319, 359, 388, 394, 493];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */