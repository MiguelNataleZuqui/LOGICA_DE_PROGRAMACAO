	
programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca ServicosWeb --> SW
	cadeia cep
	cadeia endereco
	cadeia extracao
	inteiro contador_de_carracter
	funcao inicio()
	{
		escreva("Digite seu cep: \n")
		leia(cep)
		escreva("\n----------------------------------\n")
		endereco= SW.obter_dados("https://viacep.com.br/ws/"+cep+"/json/")
		escreva(endereco,"\n")
		contador_de_carracter= t.numero_caracteres(endereco)
		extracao= t.extrair_subtexto(endereco, 22, contador_de_carracter)
		escreva(extracao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 514; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
