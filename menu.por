programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c

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
			
		}
		senao se(opcao_escolhida == "5")
		{
			
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
 * @POSICAO-CURSOR = 8175; 
 * @DOBRAMENTO-CODIGO = [8, 22, 49, 93, 163, 197, 237, 281, 314, 354];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */