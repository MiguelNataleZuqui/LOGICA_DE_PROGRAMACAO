programa
{
	
	funcao inicio()
	{
		real peso, altura, imc
		escreva("Digite seu peso: \n\n")
		leia(peso)
		escreva("\nDigite sua altura: \n\n")
		leia(altura)
		imc=peso/(altura*altura)
		escreva("Seu IMC é de : \n\n",imc,"\n\n")
		se(imc>=17)
		{
			se (imc>18.49)
			{
				se(imc<24.99)
				{
					se(imc<29.99)
					{
						se(imc<34.99)
						{
							se(imc>39.99)
							{
								escreva("obesidade III(morbida)")
							}
							senao
							{
								escreva("obesidade II(severa)")
							}
						}
						senao
						{
							escreva("obesidade I")
						}
					}
					senao
					{
						escreva("acima do peso")
					}
				}
				senao
				{
					escreva("peso normal")
				}
			}
			senao
			{
				escreva("abaixo do peso")
			}
		}
		senao
		{
			escreva("muito abaixo do peso")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
