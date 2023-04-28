programa
{
	inclua biblioteca ServicosWeb --> WS
	inclua biblioteca Texto --> txt
	cadeia cep
	cadeia endereco, endereco_sem_cep,posicao
	inteiro caracteres

	funcao inicio()
	{
		escreva("Digite seu Cep: ")
		leia(cep)
		escreva("\n--------------------\n")
		endereco = WS.obter_dados("https://viacep.com.br/ws/"+ cep +"/json/")  //https://viacep.com.br/ws/29903087/json/
		caracteres = txt.numero_caracteres(endereco)
		endereco_sem_cep = txt.extrair_subtexto(endereco, 22 , caracteres)
		endereco_sem_cep = txt.substituir(endereco_sem_cep, "," , "\n")
		escreva(endereco_sem_cep)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 93; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */