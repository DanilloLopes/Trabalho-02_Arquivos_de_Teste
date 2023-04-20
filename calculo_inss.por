programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		calcaladora_so_do_inss()
	}
	funcao calcaladora_so_do_inss()
	{
		real salario_bruto, inss
		escreva("-------------------------------------------\n")
	 	escreva("----SIMULADOR DE DESCONTO SALARIAL INSS----\n")
	 	escreva("-------------------------------------------")
	 	escreva("\n\n\n")
	 	escreva("Valor do sálario bruto: ")
	 	leia(salario_bruto)
	 	escreva("\n\n")
	 	escreva("-----------------RESULTADO----------------")
	 	escreva("\n\n")
	 	inss = equacao_inss(salario_bruto)
	 	inss = m.arredondar(inss, 2)
	 	escreva("Valor do desconto do INSS: ", inss)
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
 * @POSICAO-CURSOR = 164; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */