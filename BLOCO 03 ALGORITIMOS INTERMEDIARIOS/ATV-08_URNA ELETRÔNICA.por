programa
{
	
	funcao inicio()
	{
		inteiro num_de_eleitor , nulo=0,coringa=0,batman=0,labareda=0,robim=0,batGirl=0, maior=0
		cadeia votos, canditado_eleito = "00"
		escreva("Informe a quantidade de eleitores da seção: ")
		leia(num_de_eleitor)
		para(inteiro i=1;i<=num_de_eleitor;i++)
		{
			escreva("Eleitor ",i," em quem você vota: ")
			leia(votos)
			
			se(votos=="13")
			{
				coringa++
				se(coringa>maior)
				{
					coringa=maior
					canditado_eleito="coringa"
				}
			}
			senao se(votos=="22")
			{
				batman++
				se(batman>maior)
				{
					batman=maior
					canditado_eleito="batman"
				}
			}
			senao se (votos=="55")
			{
				labareda++
				se(labareda>maior)
				{
					labareda=maior
					canditado_eleito="labareda"
				}
			}
			senao se (votos=="12")
			{
				robim++
				se(robim>maior)
				{
					robim=maior
					canditado_eleito="robim"
				}
			}
			senao se (votos=="69")
			{
				batGirl++
				se(batGirl>maior)
				{
					batGirl=maior
					canditado_eleito="batgilr"
				}
			}
			senao
			{
				nulo++
				canditado_eleito="nulo"
			}
			
		}
		escreva("Quem obteve mais votos foi: ",canditado_eleito)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */