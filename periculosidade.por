programa
{
	inclua biblioteca Matematica -->m
	
	funcao inicio()
	{
		calcaladora_so_do_adicional_periculosidade()
	}
	funcao titulo_periculosidade()
	{
		escreva("           SIMULADOR DE ADICIONAL PERICULOSIDADE")
	 	escreva("\n\n")
	 	tracinho_texto()
	 	escreva("\n\n")
	}
	funcao calcaladora_so_do_adicional_periculosidade()
	{	
		real salario_bruto, horas_trabalhadas_mes, valor_por_hora, horas_extras_trabalhadas, periculosidade
		cadeia sim_ou_nao
		titulo_periculosidade()
	 	escreva("Digite o valor do salário bruto: ")
	 	leia(salario_bruto)
	 	escreva("\n")
	 	escreva("Digite a quantidade de horas trabalhadas no mês: ")
	 	leia(horas_trabalhadas_mes)
	 	escreva("\n")
	 	escreva("Digite a quantidade de horas extras trabalhadas no mês: ")
	 	leia(horas_extras_trabalhadas)
	 	escreva("\n")
	 	escreva("O colaborador é eletricitário?")
	 	escreva("\n[S] - Sim / [N] - Não\n")
	 	escreva("Resultado: ")
	 	leia(sim_ou_nao)
	 	enquanto(nao((sim_ou_nao != "S" e sim_ou_nao == "N") ou (sim_ou_nao == "S" e sim_ou_nao != "N")))
	 	{
	 		limpa()
	 		titulo_periculosidade()
	 		escreva("ERRO!\n")
			escreva("O valor \"", sim_ou_nao ,"\" não é uma opção válida!\n")
			escreva("O colaborador é eletricitário?")
	 		escreva("\n[S] - Sim / [N] - Não\n")
	 		escreva("Resultado: ")
	 		leia(sim_ou_nao)
	 	}
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
	 	escreva(" TOTAL:\n")
	 	escreva("	Sálario Líquido*:		",salario_liquido,"\n")
	 	escreva("|------------------------------------------------------------|")
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
 * @POSICAO-CURSOR = 1837; 
 * @DOBRAMENTO-CODIGO = [93];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */