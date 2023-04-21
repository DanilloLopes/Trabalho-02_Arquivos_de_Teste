programa
{
	
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
	 	
	 	escreva("Selecione uma opção abaixo para prosseguir:")
	 	escreva("\n\n")
	 	menu()
	}
	funcao menu()
	{
		escreva("|------------------------------------------------------------|\n")
		escreva("|                           MENU                             |\n")
		escreva("|------------------------------------------------------------|\n")
		escreva("|[1]  - Simulador de desconto salarial do INSS               |\n")
	 	escreva("|[2]  - Simulador de bonificação salarial das férias         |\n")
	 	escreva("|[3]  -                                                      |\n")
	 	escreva("|[4]  -                                                      |\n")
	 	escreva("|[5]  -                                                      |\n")
	 	escreva("|[6]  -                                                      |\n")
	 	escreva("|[7]  -                                                      |\n")
	 	escreva("|[8]  -                                                      |\n")
	 	escreva("|[9]  -                                                      |\n")
	 	escreva("|[10] -                                                      |\n")
	 	escreva("|[11] -                                                      |\n")
	 	escreva("|[12] -                                                      |\n")
	 	escreva("|[13] -                                                      |\n")
	 	escreva("|[14] - Finalizar programa.                                  |\n")
	 	escreva("|------------------------------------------------------------|")
	 	escreva("\n\n")
	 	escreva("Opção escolhida: ")
	}
	 funcao seletor_de_programa(cadeia opcao_escolhida)
	{
		se(opcao_escolhida == "1")
		{
			
		}
		senao se(opcao_escolhida == "2")
		{
			
		}
		senao se(opcao_escolhida == "3")
		{
			
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */