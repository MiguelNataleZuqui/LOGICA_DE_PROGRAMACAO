programa
{
	
	funcao inicio()
	{
		inteiro idade,crianca=0,idoso=0,adolecente=0,adulto=0,preadolecente=0
		para(inteiro i=1;i<=10;i++)
		{
			escreva("digite a idade da pessoa",i,": ")
			leia(idade)
			se(idade>9)
			{
				se(idade>14)
				{
					se(idade>21)
					{
						se(idade>64)
						{
							idoso=idoso+1
						}
						senao
						{
							adulto=adulto+1
						}
					}
					senao
					{
						adolecente=adolecente+1
					}
				}
				senao
				{
					preadolecente=preadolecente+1
				}
			}
			senao
			{
				crianca=crianca+1
			}
			
			
		}
		limpa()
		escreva("Quantidade de crianças: ",crianca,"\n")
		escreva("Quantidade de pré-adolescentes: ",preadolecente,"\n")
		escreva("Quantidade de adolescentes: ",adolecente,"\n")
		escreva("Quantidade de adultos: ",adulto,"\n")
		escreva("Quantidade de idosos: ",idoso,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 842; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */