programa
{
	
	funcao inicio()
	{
		real x, y, z, k, w
		escreva("digite x")
		leia(x)
		escreva("digite y")
		leia(y)
		escreva("digite z")
		leia(z)
		escreva("digite k")
		leia(k)
		escreva("digite w")
		leia(w)
		se(w<6)
		{
			w= 2 * w - z 
			k= y * 3 - z 
			se( k>2) 
			{
				z= 2 * w - z
				k = y * 3 - z
				
			}
			k=w-3*w
		}
		se (y>4 ou x<w)
		{
			se ( k< 8)
			{
				x=y-w*3
				y=k+2*x
			}
			z= 2*k+y
			y= w +2*x
			
		}
		x=x-y*3
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */