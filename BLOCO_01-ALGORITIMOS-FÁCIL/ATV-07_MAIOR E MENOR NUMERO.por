programa {
  funcao inicio() {
    real num1, num2, num3
    escreva("valor do numero 1: ")
    leia(num1)
    escreva("valor do numero 2: ")
    leia(num2)
    escreva("valor do numero 3: ")
    leia(num3)

		se (num1>num2)
		{
			se(num2>num3)
			{
				escreva("maior numero é : ",num1)
				escreva("menor numero é : ",num3)
			}
			senao se(num1>num3){
				escreva("maior numero é : ",num1)
				escreva("menor numero é : ",num2)
			}
			senao
			{
				escreva("maior numero é : ",num3)
				escreva("menor numero é : ",num2)
			}
			
			
		}
		senao se(num1>num3)
		{
			escreva("maior numero é : ",num2)
			escreva("menor numero é : ",num3)
		}
		senao se(num2>num3)
		{
			escreva("maior numero é : ",num2)
			escreva("menor numero é : ",num1)
		}
		senao
		{
			escreva("maior numero é : ",num3)
			escreva("maior numero é : ",num1)
		}
		
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 836; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1247; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */