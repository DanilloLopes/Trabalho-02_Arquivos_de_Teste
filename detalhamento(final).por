programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		calculadora_dethalhamento()
	}
	funcao calculadora_dethalhamento()
	{    
		real salario_bruto, horas_extras_feitas_mes, horas_noturnas_feitas_mes, horas_trabalhadas_mes = 220.0
		real valor_vale_transporte, hora_extra, noturno, periculosidade, irrf, inss, fgts, total_adicionais, total_descontos
		caracter s_ou_n_adicional_periculosidade, s_ou_n_adicional_VT
		escreva("|------------------------------------------------------------|\n")
		escreva("|		          ENTRADAS				     |\n")
		escreva("|------------------------------------------------------------|\n")
		escreva("\n\n")
		escreva("Insira o valor do salario bruto para calcular os descontos e adicionais: ")
	 	leia(salario_bruto)
	 	escreva("\n\n")
	 	escreva("Insira a quantidade de horas extras feitas neste mes: ")
	 	leia(horas_extras_feitas_mes)
	 	escreva("\n\n")
	 	escreva("Insira a quantidade de horas noturnas trabalhadas neste mes: ")
	 	leia(horas_noturnas_feitas_mes)
	 	escreva("\n\n")
	 	escreva("Recebe adicional por periculosidade ?(s) ou (n): ")
	 	leia(s_ou_n_adicional_periculosidade)
	 	escreva("\n\n")
	 	escreva("O vale transporte é descontado do sálario ?(s) ou (n): ")
	 	leia( s_ou_n_adicional_VT)
	 	escreva("\n\n")

		valor_vale_transporte = equacao_vale_transpote(salario_bruto)
		valor_vale_transporte = m.arredondar(valor_vale_transporte, 2)
	 	
	 	hora_extra = equacao_hora_extra(salario_bruto, horas_trabalhadas_mes, horas_extras_feitas_mes)
	 	hora_extra = m.arredondar(hora_extra, 2)
	 	
	 	noturno = equacao_adicional_noturno(salario_bruto, horas_trabalhadas_mes, horas_noturnas_feitas_mes)
	 	noturno = m.arredondar(noturno, 2)
	 	
	 	periculosidade = equacao_periculosidade(salario_bruto)
	 	periculosidade = m.arredondar(periculosidade, 2)

	 	fgts = equacao_fgts(salario_bruto)
		fgts = m.arredondar(fgts, 2)

	 	irrf = equacao_imposto_de_renda(salario_bruto)
	 	irrf = m.arredondar(irrf, 2)

		inss = equacao_inss(salario_bruto)
	 	inss = m.arredondar(inss, 2)


	 	real salario_liquido, salario_adicional_periculosidade

	 	total_adicionais = periculosidade + hora_extra + noturno
	 	total_descontos = valor_vale_transporte + inss + irrf
	 	salario_liquido = salario_bruto + total_adicionais - total_descontos
	 	
	 	escreva("|------------------------------------------------------------|\n")
		escreva("|			DETALHAMENTO			     |\n")
		escreva("|------------------------------------------------------------|\n")
		escreva("	 SáLARIO BRUTO:			                         ",salario_bruto,"\n\n")
		escreva("\n\n")
		escreva("  PROVENTOS    : Adicional de periculosidade: + R$ ", periculosidade, "\n")
		escreva("               : Adicional noturno: + R$ ",noturno, "\n")
		escreva("               : Adicional de hora extra: + R$ ", hora_extra, "\n")
		escreva("               : FGTS: + R$ ", fgts," (deposito)", "\n")
		escreva("               : Vale transporte: - R$ ", valor_vale_transporte, "\n")
		escreva("               : INSS: - R$ ", inss, "\n")
		escreva("               : IRRF: - R$ ", irrf, "\n")
	 	escreva("	TOTAL DE ADICIONAIS:			+ R$ ",total_adicionais,"\n\n")
	 	escreva("	TOTAL DE DESCONTOS:	    			 - R$ ",total_descontos,"\n\n")
	 	escreva(" \n\n")
	 	escreva("	SÀLARIO LIQUIDO:		",salario_liquido,"\n")
	 	escreva("|------------------------------------------------------------|")
	 	
	 	
	 	escreva("|------------------------------------------------------------|")
	}
	funcao real equacao_vale_transpote(real salario_bruto)
	{
		real valor_VT
		valor_VT = salario_bruto * 0.06
		retorne valor_VT
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
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3076; 
 * @DOBRAMENTO-CODIGO = [82, 88, 98, 104, 120, 131, 171];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */