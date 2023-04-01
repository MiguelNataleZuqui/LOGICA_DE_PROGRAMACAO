programa
{
	
	funcao inicio()
	{
		inteiro numeros,maior=0
		
		escreva("Digite os cinco números: \n")
			
		para(inteiro controle = 1 ;controle <= 5 ;controle++)
		{
			leia(numeros)
			se(numeros>maior)
			{
				maior=numeros
			}
		}
		escreva("maior numero é ",maior)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
