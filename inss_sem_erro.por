programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		simulador_periculosidade()
	}
	funcao simulador_periculosidade()
	{	
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
 * @POSICAO-CURSOR = 633; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */