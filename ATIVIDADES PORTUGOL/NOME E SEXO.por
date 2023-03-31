programa
{
	
	funcao inicio()
	{
		cadeia nome
		caracter sexo

		escreva("Qual seu nome?\n ")
		leia(nome)
		escreva("Qual seu sexo? \n")
		leia(sexo)
		se (sexo=='m')
		{
			escreva("Bem dia, senhor", nome)
		}
		senao
		{
			se (sexo=='f')
			{
				escreva("Bem dia, senhora ",nome)
			}
			senao
			{
				escreva("Para a identificação do gênero digite\n")
				escreva("\n*******\n")
				escreva("m-Homem\nf-Mulher")
				escreva("\n*******\n")
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 63; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */