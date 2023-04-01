programa
{
	
	funcao inicio()
	{
		inteiro numero,cem=0,cinquenta=0,vinte=0,dez=0,cinco=0,dois=0,um=0,resultado=0
		escreva("Digite um numero inteiro: ")
		leia(numero)
		enquanto(numero!=0)
		{
			se(numero>=100)
			{
			faca
			{
				numero=numero-100
				cem=cem+1
			}enquanto(numero>100)
			}
			senao se(numero>=50)
			{
				faca
				{
					numero=numero-50
					cinquenta=cinquenta+1
				}enquanto(numero>50)
			}
			senao se (numero>=20)
			{
				faca
				{
					numero=numero-20
					vinte=vinte+1
				}enquanto(numero>20)
			}
			senao se(numero>=10)
			{
				faca
				{
					numero=numero-10
					dez=dez+1
				}enquanto(numero>10)
			}
			senao se(numero>=5)
			{
				faca
				{
					numero=numero-5
					cinco=cinco+1
				}enquanto(numero>5)
			}
			senao se (numero>=2)
			faca
			{
				numero=numero-2
				dois=dois+1
			}enquanto(numero>2)
			senao
			{
			faca
			{
				numero=numero-1
				um=um+1
			}enquanto(numero>1)
			}
			
			
		}
		escreva("Notas de 100 reais:",cem,"\n")
		escreva("Notas de 50 reais:",cinquenta,"\n")
		escreva("Notas de 20 reai:",vinte,"\n")
		escreva("Notas de 10 reais: ",dez,"\n")
		escreva("Notas de 10 reais: ",cinco,"\n")
		escreva("Notas de 2 reais: ",dois,"\n")
		escreva("Moedas de 1 real: ",um,"\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 6, 10, 6}-{cem, 6, 17, 3}-{cinquenta, 6, 23, 9}-{vinte, 6, 35, 5}-{dez, 6, 43, 3}-{cinco, 6, 49, 5}-{dois, 6, 57, 4}-{um, 6, 64, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
