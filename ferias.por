programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		simulador_bon_ferias()
	}
	funcao simulador_bon_ferias()
	{
	 	real salario_bruto, bonificacao_ferias, inss, total_de_proventos, total_de_descontos, salario_liquido
	 	escreva("              SIMULADOR DE BONIFICAÇÃO DE FÉRIAS")
	 	escreva("\n\n")
	 	escreva("-------------------------------------------------------------\n\n")
	 	escreva("Insira o valor do salario bruto: ")
	 	leia(salario_bruto)
		bonificacao_ferias = salario_bruto/3
		bonificacao_ferias = m.arredondar(bonificacao_ferias, 2)
		total_de_proventos = salario_bruto + bonificacao_ferias
		inss = equacao_inss(total_de_proventos)
		inss = m.arredondar(inss, 2)
		escreva("\n")
	 	escreva("|------------------------------------------------------------|\n")
		escreva("|			RESULTADO			     |\n")
		escreva("|------------------------------------------------------------|\n")
		escreva("  DESCRIÇÃO:										\n")
	 	escreva("	Sálario bruto:			",salario_bruto,"				\n")
	 	escreva("	Bonificação de férias:		",bonificacao_ferias,"		\n")
	 	escreva("	Total de proventos:		",total_de_proventos,"										\n")
	 	escreva("													\n")
	 	escreva("  DESCONTOS:										\n")
	 	escreva("	INSS:				",inss,"						\n")
	 	escreva("	IRRF												\n")
	 	escreva("	TOTAL DE DESCONTOS:		",total_de_descontos,"							\n")
	 	escreva("|------------------------------------------------------------|")
	}
	funcao real equacao_inss(real salario_bruto)
	{	const real PISO_SALARIAL_1 = 1302.00
		const real PISO_SALARIAL_2 =2571.29
		const real PISO_SALARIAL_3 =3856.94
		real desconto_1_faixa_inss, desconto_2_faixa_inss, desconto_3_faixa_inss, desconto_4_faixa_inss
										
		se(salario_bruto <= PISO_SALARIAL_1)
		{
			desconto_1_faixa_inss = (0.075 * salario_bruto) 
			retorne desconto_1_faixa_inss
		}
		
		senao se(salario_bruto > PISO_SALARIAL_1 e salario_bruto < PISO_SALARIAL_2)
		{
			desconto_1_faixa_inss = (0.075  * PISO_SALARIAL_1) 
			desconto_2_faixa_inss = 0.09 * (salario_bruto - PISO_SALARIAL_1) + desconto_1_faixa_inss
			retorne desconto_2_faixa_inss
		}
		senao se(salario_bruto > PISO_SALARIAL_2 e salario_bruto < PISO_SALARIAL_3)
		{    
			desconto_1_faixa_inss = (0.075  * PISO_SALARIAL_1) 
			desconto_2_faixa_inss = 0.09 * ( PISO_SALARIAL_2 - PISO_SALARIAL_1)
			desconto_3_faixa_inss = 12.0/100.0 * (salario_bruto - PISO_SALARIAL_2) + desconto_1_faixa_inss + desconto_2_faixa_inss
			retorne desconto_3_faixa_inss
		}
		senao 
		{
          	desconto_1_faixa_inss = 0.075  * PISO_SALARIAL_1
			desconto_2_faixa_inss = 0.09 * ( PISO_SALARIAL_2 - PISO_SALARIAL_1)
			desconto_3_faixa_inss = 0.12 * (PISO_SALARIAL_3 - PISO_SALARIAL_2) 	
			desconto_4_faixa_inss = 0.14 * ( salario_bruto -  PISO_SALARIAL_3) + desconto_1_faixa_inss + desconto_2_faixa_inss + desconto_3_faixa_inss
			retorne desconto_4_faixa_inss
          }	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */