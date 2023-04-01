programa
{

	
	funcao inicio()
	{
		inteiro pessoas,m=0,h=0
		caracter sexo
		cadeia nome
		escreva("Quantas pessoas? ")
		leia(pessoas)
		para(inteiro i=1; i<=pessoas; i++)
		{
			escreva("Informe seu sexo (f/m): ")
			leia(sexo)
			escreva("Informe seu nome: ")
			leia(nome)
			se(sexo == 'f')
			{
				escreva("Bem vinda sra. ",nome,"\n")
				m=m+1
				
			}
			se(sexo == 'm')
			{
				escreva("Bem vinda sr. ",nome,"\n")
				h=h+1
			}
		}
		escreva("Homens cumprimentados: ",h)
		escreva("Mulheres cumprimentadas: \n",m)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 527; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoas, 7, 10, 7}-{sexo, 8, 11, 4}-{nome, 9, 9, 4}-{i, 12, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */