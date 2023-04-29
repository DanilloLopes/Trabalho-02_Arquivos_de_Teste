programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tp
	inclua biblioteca ServicosWeb --> sw
	inclua biblioteca Arquivos --> a
	funcao inicio()
	{
		banco_de_dados()
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
		cadeia endereco = txt.extrair_subtexto(endereco_bruto, 1, numero_de_caracteres)
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
 * @POSICAO-CURSOR = 898; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cep, 32, 9, 3}-{existe_arquivo_ou_nao, 48, 9, 21};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */