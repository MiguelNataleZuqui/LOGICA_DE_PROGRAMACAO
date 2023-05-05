programa
{
	
	funcao inicio()
	{
		inteiro numero_pessoas, 
		homens_cumprimentados=0, mulheres_cumprimentadas=0
		caracter sexo
		cadeia nome
		
		escreva("Quantas pessoas: ")
		leia(numero_pessoas)
		
		para(inteiro contador=0;contador <numero_pessoas;contador++)
		{
			escreva("Informe seu sexo (f/m): ")
			leia(sexo)
			escreva("Informe seu nome: ")
			leia(nome)

			se(sexo == 'f')
			{
				escreva("Bem vinda sra. ", nome, "\n")
				mulheres_cumprimentadas++
			}senao se (sexo == 'm')
			{
				escreva("Bem vindo sr. ", nome, "\n")
				homens_cumprimentados++
			}senao
			{
				escreva("Escolha uma opção válida")
			}
		}

		escreva("Homens cumprimentados: ", homens_cumprimentados, "\n")
		escreva("Mulheres cumprimentadas: ", mulheres_cumprimentadas)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */