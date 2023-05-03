programa
{
	
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	inclua biblioteca ServicosWeb --> sw
	inclua biblioteca Arquivos --> a
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
		ler_titulo_ou_nao = 0
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
			simulador_de_seguro_desemprego()
		}
		senao se(opcao_escolhida == "7")
		{
			simulador_de_vale_transporte()
		}
		senao se(opcao_escolhida == "8")
		{
			simulador_de_pis()
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
			calcaladora_so_do_adicional_noturno()
		}
		senao se(opcao_escolhida == "13")
		{
			banco_de_dados()
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
		escreva("              SIMULADOR DE DESCONTO DE INSS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
		cadeia valor_para_verificar = ""
		logico numero_ou_nao = falso
		const cadeia TITULO = "             SIMULADOR DE DESCONTO DE INSS"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		real salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		escreva("\n")
		real inss = equacao_inss(salario_bruto)
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
		escreva("              SIMULADOR BONIFICAÇÂO FERIAS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
		cadeia valor_para_verificar = ""
		logico numero_ou_nao = falso
		const cadeia TITULO = "             SIMULADOR BONIFICAÇÂO FERIAS"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		real salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		escreva("\n")
	 	
		real bonificacao_ferias = salario_bruto/3
		bonificacao_ferias = m.arredondar(bonificacao_ferias, 2)
		real total_de_proventos = salario_bruto + bonificacao_ferias
		real irrf
	 	irrf = equacao_imposto_de_renda(total_de_proventos)
	 	irrf = m.arredondar(irrf, 2)
	 	real inss = equacao_inss(total_de_proventos)
		inss = m.arredondar(inss, 2)
	 	real total_de_descontos = inss + irrf
	 	total_de_descontos = m.arredondar(total_de_descontos, 2)
	 	real salario_liquido = total_de_proventos - total_de_descontos
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
		cadeia valor_para_verificar = ""
		logico numero_ou_nao = falso
		const cadeia TITULO = "             SIMULADOR DE DESCONTO DE IRRF"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		real salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		escreva("\n")
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
		cadeia valor_para_verificar = ""
		real salario_bruto
		logico numero_ou_nao = falso
		const cadeia TITULO = "           SIMULADOR DE DESCONTO DE DEPÓSITO FGTS"
		valor_para_verificar = recebe_salario_bruto(numero_ou_nao, valor_para_verificar, TITULO)
		escreva("\n")
		salario_bruto = tp.cadeia_para_real(valor_para_verificar)
		real fgts
		fgts = equacao_fgts(salario_bruto)
		fgts = m.arredondar(fgts, 2)
		limpa()
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
	funcao titulo_multa_fgts()
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
		cadeia valor_para_verificar = ""
		const real porcentagem_multa_por_acordo = 0.20
		const real porcentagem_multa_sem_acordo = 0.40
		const cadeia TITULO = "              SIMULADOR DE MULTA FGTS"
		titulo_multa_fgts()
	 	inteiro i = 0
	 	cadeia perunta_s_ou_n = "O colaborador dispensado foi demitido por justa causa?"
	 	cadeia sim_ou_nao = testador_sim_ou_nao(perunta_s_ou_n, TITULO)
	 	logico numero_ou_nao = falso
	 	se(sim_ou_nao == "S")
		 	{
				i++
		 	}
		 	senao
		 	{
				enquanto(numero_ou_nao == falso)
				{
					escreva("\n\n")
		 			escreva("Digite o valor total do FGTS: ")
					leia(valor_para_verificar)
					numero_ou_nao = testador_de_numero(valor_para_verificar)
					se(numero_ou_nao == falso)
					{
						limpa()
						titulo_multa_fgts()
						mensagem_erro(valor_para_verificar)
					}
				}
				valor_fgts = tp.cadeia_para_real(valor_para_verificar)
				perunta_s_ou_n = "Foi feito um acordo para dispensa com a empresa?"
				sim_ou_nao = testador_sim_ou_nao(perunta_s_ou_n, TITULO)
				se(sim_ou_nao == "S")
		 		{
					valor_multa_fgts = valor_fgts * porcentagem_multa_por_acordo
		 		}
		 		senao
		 		{
		 			valor_multa_fgts = valor_fgts * porcentagem_multa_sem_acordo
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
		 	titulo_multa_fgts()
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
	funcao banco_de_dados()
	{
		escreva("        CADASTRO DE FUNCIONÁRIOS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
		cadeia nome
		inteiro arquivo
		escreva("Digite abaixo as informações para cadastrar o colaborador.\n")
		escreva("Nome: ")
		leia(nome)
		escreva("Telefone: ")
		cadeia telefone
		leia(telefone)
		escreva("Idade:  ")
		cadeia idade
		leia(idade)
		escreva("Email: ")
		cadeia email
		leia(email)
		escreva("CEP: ")
		cadeia cep
		leia(cep)
		cadeia endereco_bruto 
		endereco_bruto = sw.obter_dados("https://viacep.com.br/ws/"+ cep +"/json/")
		inteiro numero_de_caracteres =  txt.numero_caracteres(endereco_bruto)
		cadeia endereco = txt.extrair_subtexto(endereco_bruto, 22, numero_de_caracteres)
		inteiro ocorrencia = 0
		para(inteiro i = 0; i < 5; i++)
		{
			
			ocorrencia = txt.posicao_texto(",", endereco, ocorrencia)
			ocorrencia++
		}
		ocorrencia--
		endereco = txt.extrair_subtexto(endereco, 0, ocorrencia)
		endereco = txt.substituir(endereco, "\"", "")
		logico existe_arquivo_ou_nao = a.arquivo_existe("banco de dados.txt")
		se(existe_arquivo_ou_nao)
		{
			arquivo = a.abrir_arquivo("banco de dados.txt", a.MODO_ACRESCENTAR)
			a.escrever_linha("NOME: "+nome+", Telefone: "+telefone+", Email: "+email+", IDADE: "+idade+", Endereço: "+endereco, arquivo)
			a.fechar_arquivo(arquivo)	
		}
		senao
		{
			arquivo = a.abrir_arquivo("banco de dados.txt", a.MODO_ESCRITA)
			a.escrever_linha("NOME: "+nome+"; Telefone: "+telefone+"; Email: "+email+"; IDADE: "+idade+"; Endereço: "+endereco, arquivo)
			a.fechar_arquivo(arquivo)
		}
	}
	funcao titulo_seguro_desemprego()
	{
		escreva("        SIMULADOR DE DIREITO AO SEGURO-DESEMPREGO")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_de_seguro_desemprego()
	{
		limpa()
		titulo_seguro_desemprego()
	 	const cadeia TITULO = "               SIMULADOR DE DIREITO AO SEGURO-DESEMPREGO"
	 	cadeia perunta_s_ou_n = "O requerente foi dispensado foi demitido por justa causa?"
	 	cadeia sim_ou_nao = testador_sim_ou_nao(perunta_s_ou_n, TITULO)
	 	logico pode_receber_ou_nao
	 	inteiro quantidade_de_parcelas = 0
	 	logico numero_ou_nao = falso
	 	cadeia valor_para_verificar = ""
	 	se(sim_ou_nao == "S")
	 	{
		 	pode_receber_ou_nao = falso
	 	}
	 	senao
	 	{
	 		
		 	
		 	enquanto(numero_ou_nao == falso)
			{
				escreva("\n\n")
		 		escreva("Digite quantas vezes o seguro-desemprego já foi solicitado: ")
				leia(valor_para_verificar)
				numero_ou_nao = testador_de_numero(valor_para_verificar)
				se(numero_ou_nao == falso)
				{
					limpa()
					titulo_seguro_desemprego()
					mensagem_erro(valor_para_verificar)
				}
			}
			inteiro quantidade_de_solicitacoes = tp.cadeia_para_inteiro(valor_para_verificar, 10)
			inteiro meses_trabalhados = 0
			faca
			{
				numero_ou_nao = falso
				se(meses_trabalhados > 12)
				{
					limpa()
					titulo_seguro_desemprego()
					mensagem_erro(valor_para_verificar)
				}
				enquanto(numero_ou_nao == falso)
				{
					escreva("\n\n")
			 		escreva("Digite a quantidade de meses que trabalhou: ")
					leia(valor_para_verificar)
					numero_ou_nao = testador_de_numero(valor_para_verificar)
					se(numero_ou_nao == falso)
					{
						limpa()
						titulo_seguro_desemprego()
						mensagem_erro(valor_para_verificar)
					}
				}
				meses_trabalhados = tp.cadeia_para_inteiro(valor_para_verificar, 10)
			}enquanto(meses_trabalhados > 12)
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
		escreva("Digite o valor do salario bruto: ")
		real salario_bruto
		leia(salario_bruto)
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
	funcao real equacao_vale_transpote(real salario_bruto)
	{
		real valor_VT
		valor_VT = salario_bruto * 0.06
		retorne valor_VT
	}
	funcao titulo_pis()
	{
		escreva("                     SIMULADOR DE PIS")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao simulador_de_pis()
	{
		limpa()
		titulo_pis()
	 	const real SALARIO_MINIMO = 1302.00
	 	escreva("Digite a quantos anos o individuo está inscrito no PIS/PASEB: ")
	 	inteiro tempo_inscrito
	 	leia(tempo_inscrito)
	 	logico recebe_ou_nao
	 	inteiro meses_trabalhados = 0
	 	se(tempo_inscrito < 5)
	 	{
	 		recebe_ou_nao = falso
	 	}
	 	senao
	 	{
	 		escreva("Digite a quantidade de meses trabalhados no ano-base: ")
	 		leia(meses_trabalhados)
	 		enquanto(meses_trabalhados < 0 ou meses_trabalhados > 12)
	 		{
	 			limpa()
	 			titulo_pis()
	 			escreva("ERRO!\n")
				escreva("O valor \"", meses_trabalhados ,"\" não é uma valor válido!\n")
				escreva("Por favor, digite uma opção de válida para prosseguir.\n\n")
				escreva("Digite a quantidade de meses trabalhados no ano-base: ")
	 			leia(meses_trabalhados)
	 			limpa()
	 			titulo_pis()
	 		}
	 		se(meses_trabalhados < 1)
	 		{
	 			recebe_ou_nao = falso
	 		}
	 		senao
	 		{
	 			escreva("Digite o valor do sálario recebido mensalmente: ")
	 			real salario
	 			leia(salario)
	 			se(salario > (2 * SALARIO_MINIMO))
	 			{
	 				recebe_ou_nao = falso
	 			}
	 			senao
	 			{
	 				escreva("Todos os dados preenchidos pelo empregador estão preenchidos correntamente?\n")
	 				escreva("[S] - Sim / [N] - Não\n")
	 				escreva("Resposta: ")
	 				cadeia sim_ou_nao
	 				leia(sim_ou_nao)
	 				sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 				enquanto(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 				{
	 					limpa()
	 					titulo_pis()
	 					escreva("ERRO!\n")
						escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n")
						escreva("Por favor, digite uma opção de válida para prosseguir.\n\n")
						escreva("Todos os dados preenchidos pelo empregador estão preenchidos correntamente?\n")
	 					escreva("[S] - Sim / [N] - Não\n")
	 					escreva("Resposta: ")
	 					leia(sim_ou_nao)
	 					sim_ou_nao = txt.caixa_alta(sim_ou_nao)
	 					limpa()
	 					titulo_pis()
	 				}
	 				se(sim_ou_nao == "N")
	 				{
	 					recebe_ou_nao = falso
	 				}
	 				senao
	 				{
	 					recebe_ou_nao = verdadeiro
	 				}
	 			}
	 		}
	 	}
	 	real valor_pis
	 	valor_pis = (SALARIO_MINIMO / 12) * meses_trabalhados
	 	se(recebe_ou_nao)
	 	{
	 		limpa()
	 		titulo_pis()
	 		escreva("\n\n")
	 		escreva("|")
			tracinho_texto()
			escreva("|\n")
			escreva("|			RESULTADO			     |\n")
			escreva("|")
			tracinho_texto()
			escreva("|\n")
			escreva(" DETALHAMENTO:\n")
			escreva("	Valor PIS				",valor_pis,"\n")
			escreva("|")
			tracinho_texto()
			escreva("|\n")
	 	}
	 	senao
	 	{
	 		escreva("\n\n")
	 		tracinho_texto()
	 		escreva("\n\n")
	 		escreva("O requerinte não tem direito de receber o PIS.")
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
	funcao tracinho_texto()
	{
		para(inteiro i = 1; i <= 60; i++)
		{
		  escreva ("-")
		}
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
	funcao real equacao_periculosidade(real salario_bruto, real horas_trabalhadas_mes,real horas_extras_trabalhdas, cadeia sim_ou_nao)
	{	
		real valor_por_hora_extra, total_salario_e_hora_extra, valor_por_hora_com_periculosidade, valor_total_adicional_periculosidade, valor_total_hora_extra_periculosidade =0.0, valor_por_hora
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
     funcao calcaladora_so_do_adicional_noturno()
     
	{	
		real salario_bruto =0.0, horas_trabalhadas_mes, valor_por_hora, horas_noturnas_trabalhadas,noturno
		caracter s_ou_n_eletricitario
		escreva("              SIMULADOR DE ADICIONAL NOTURNO")
	 	escreva("\n\n")
	 	escreva("-------------------------------------------------------------\n\n")
	 	escreva("Insira o valor do salario bruto para calcular o adicional noturno: ")
	 	leia(salario_bruto)
	 	escreva("\n\n")
	 	escreva("Insira a quantidade de horas trabalhadas no mês: ")
	 	leia(horas_trabalhadas_mes)
	 	escreva("\n\n")
	 	escreva("Insira a quantidade de horas noturnas trabalhadas no mes: ")
	 	leia(horas_noturnas_trabalhadas)
	 	escreva("\n\n")
	 	noturno = equacao_adicional_noturno(salario_bruto, horas_trabalhadas_mes, horas_noturnas_trabalhadas)
	 	noturno = m.arredondar(noturno, 2)
	 	real salario_liquido
	 	salario_liquido = salario_bruto + noturno
	 	escreva("|------------------------------------------------------------|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|------------------------------------------------------------|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n\n")
	 	escreva("  DESCONTOS:\n")
	 	escreva("	ADICIONAL HORA NOTURNA:				",noturno,"\n\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido*:		",salario_liquido,"\n")
	 	escreva("|------------------------------------------------------------|")	
	}
	funcao real equacao_adicional_noturno(real salario_bruto, real horas_trabalhadas_mes,real horas_noturnas_trabalhadas)	
	{
		real  valor_da_hora, acrecimo_hora_noturna_trabalhada , valor_adicional_noturno ,conversao_horas_em_minutos 
		conversao_horas_em_minutos = horas_noturnas_trabalhadas * 60
		horas_noturnas_trabalhadas = conversao_horas_em_minutos / 52.5
		valor_da_hora = salario_bruto/horas_trabalhadas_mes
          acrecimo_hora_noturna_trabalhada = valor_da_hora * 0.2  
   		valor_adicional_noturno = horas_noturnas_trabalhadas * acrecimo_hora_noturna_trabalhada
		retorne valor_adicional_noturno
	}
	funcao calcaladora_so_do_horas_extras()
	
	{	
		real  salario_bruto, horas_trabalhadas_mes, horas_extras_trabalhdas, hora_extra
		escreva("              SIMULADOR DE ADICIONAL HORA EXTRA")
	 	escreva("\n\n")
	 	escreva("-------------------------------------------------------------\n\n")
	 	escreva("Insira o valor do salario bruto: ")
	 	leia(salario_bruto)
	 	escreva("\n\n")
	 	escreva("Insira a quantidade de horas trabalhadas no mês: ")
	 	leia(horas_trabalhadas_mes)
	 	escreva("\n\n")
	 	escreva("Insira a quantidade de horas extras voce trabalhou no mes: ")
	 	leia(horas_extras_trabalhdas)
	 	escreva("\n\n")
	 	hora_extra = equacao_hora_extra(salario_bruto,horas_trabalhadas_mes, horas_extras_trabalhdas)
	 	hora_extra = m.arredondar(hora_extra, 2)
	 	real salario_liquido
	 	salario_liquido = salario_bruto - hora_extra
	 	escreva("|------------------------------------------------------------|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|------------------------------------------------------------|\n")
		escreva("  PROVENTOS:\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"\n\n")
	 	escreva("  DESCONTOS:\n")
	 	escreva("	ADICIONAL HORA EXTRA:				",hora_extra,"\n\n")
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido*:		",salario_liquido,"\n")
	 	escreva("|------------------------------------------------------------|")
	}
	funcao real equacao_hora_extra(real salario_bruto, real horas_trabalhadas_mes,real horas_extras_trabalhdas)
	{
		real valor_por_hora, valor_por_hora_extra, total_salario_e_hora_extra
		valor_por_hora = salario_bruto/horas_trabalhadas_mes
		valor_por_hora_extra = valor_por_hora + (valor_por_hora * 0.5)
		valor_por_hora_extra = valor_por_hora_extra * horas_extras_trabalhdas
		retorne valor_por_hora_extra 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 20070; 
 * @DOBRAMENTO-CODIGO = [11, 25, 52, 96, 166, 202, 242, 292, 330, 370, 404, 410, 417, 493, 544, 551, 748, 754, 761, 866, 881, 900, 906, 928, 935, 942, 1008, 1036, 1068, 1078, 1109];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */