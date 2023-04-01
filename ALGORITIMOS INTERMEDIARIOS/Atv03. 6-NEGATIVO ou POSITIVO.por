programa
{
	
	funcao inicio()
	{
		inteiro numero
		inteiro quant_de_numero=0
		faca
		{
			escreva("\nDigite um número:")
			leia(numero)
		se(numero!=0)
		{
			quant_de_numero=quant_de_numero+1
			se(numero<0)
			{
				escreva("\n",numero," negativo")
				
			}
			senao
			{
				escreva("\n",numero," positivo")
				
			}
		}
		}enquanto(numero!=0)
		escreva("\nforam digitados ",quant_de_numero," numeros")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
