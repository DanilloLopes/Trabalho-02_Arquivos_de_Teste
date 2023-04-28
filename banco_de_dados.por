programa
{
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		banco_de_dados()
	}
	funcao banco_de_dados()
	{
		cadeia nome
		inteiro arquivo
		escreva("Digite abaixo as informações para cadastrar o colaborador: ")
		escreva("Nome: ")
		leia(nome)
		escreva("Telefone: ")
		cadeia telefone
		leia(telefone)
		escreva("Idade:  ")
		inteiro idade
		leia(idade)
		escreva("Email: ")
		cadeia email
		leia(email)
		escreva("CEP: ")
		logico existe_arquivo_ou_nao
		existe_arquivo_ou_nao = a.arquivo_existe("banco de dados.txt")
		se(existe_arquivo_ou_nao)
		{
			arquivo = a.abrir_arquivo("banco de dados.txt", a.MODO_ACRESCENTAR)
			a.escrever_linha("NOME: "+nome+", IDADE: "+idade, arquivo)
			a.fechar_arquivo(arquivo)	
		}
		senao
		{
			arquivo = a.abrir_arquivo("banco de dados.txt", a.MODO_ESCRITA)
			a.escrever_linha("NOME: "+nome+", IDADE: "+idade, arquivo)
			a.fechar_arquivo(arquivo)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {existe_arquivo_ou_nao, 26, 9, 21};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */