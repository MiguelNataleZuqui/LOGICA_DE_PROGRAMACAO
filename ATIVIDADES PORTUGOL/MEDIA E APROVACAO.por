programa
{
	
	funcao inicio()
	{
		real nota1,nota2,media
		escreva("Sua primeira nota: \n")
		leia(nota1)
		escreva("Sua segunda nota: \n")
		leia(nota2)
		media=(nota1+nota2)/2
		escreva("sua media foi de : ",media)
		se (media>=7) 
		{
			escreva("\n--------------------------------------\n")
			escreva("PARABÉNS VOCÊ FOI APROVADO\n")
			escreva("--------------------------------------")
			
		}
		senao
		{
			escreva("\n------------------------\n")
			escreva("VOCÊ FOI REPROVADO\n")
			escreva("--------------------------")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 429; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */