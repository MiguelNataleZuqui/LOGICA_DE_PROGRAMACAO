programa
{
	
	funcao inicio()
	{
		inteiro valor, qtdNotas
		escreva("Digite um número inteiro: ")
    		leia(valor)

    		escreva("Notas necessárias: \n")
    		
	     qtdNotas = valor / 100
	     escreva(qtdNotas, " nota(s) de R$100,00 \n")
	     valor = valor - (qtdNotas * 100)
	     
	     qtdNotas = valor / 50
    		escreva(qtdNotas, " nota(s) de R$50,00 \n")
    		valor = valor - (qtdNotas * 50)
		
		qtdNotas = valor / 20
    		escreva(qtdNotas, " nota(s) de R$20,00 \n")
    		valor = valor - (qtdNotas * 20)

		qtdNotas = valor / 10
    		escreva(qtdNotas, " nota(s) de R$10,00 \n")
    		valor = valor - (qtdNotas * 10)

	    qtdNotas = valor / 5
	    escreva(qtdNotas, " nota(s) de R$5,00 \n")
	    valor = valor - (qtdNotas * 5)

	    qtdNotas = valor / 2
	    escreva(qtdNotas, " nota(s) de R$2,00 \n")
	    valor = valor - (qtdNotas * 2)

    		qtdNotas = valor
    		escreva(qtdNotas, " nota(s) de R$1,00 \n")
    		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */