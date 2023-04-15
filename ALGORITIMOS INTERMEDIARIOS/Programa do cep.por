programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca ServicosWeb --> SW
	cadeia cep
	cadeia endereco
	cadeia extracao
	inteiro contador_de_carracter
	cadeia colocar
	funcao inicio()
	{
		escreva("Digite seu cep: \n")
		leia(cep)
		escreva("\n----------------------------------\n")
		endereco= SW.obter_dados("https://viacep.com.br/ws/"+cep+"/json/")
		contador_de_carracter= t.numero_caracteres(endereco)
		
		extracao = t.extrair_subtexto(endereco, 24, contador_de_carracter)
		colocar= t.substituir(extracao, ", ", "\n\n")
		
		escreva(colocar)
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
