programa
{
	
	funcao inicio()
	{
		inteiro numero_eleitores, coringa=0, batman=0, labareda=0,
		robim=0, batGirl=0, nulo=0, maior_total_votos=0
			
		cadeia voto, candidato_eleito

		cadeia  candidatos[6]={"nulo","coringa","batman","labareda","batgirl","robim"}
		inteiro votos[6]
		
		escreva("Informe a quantidade de eleitores da seção: ")
		leia(numero_eleitores)
		faca
		{
			escreva("Informe a quantidade de eleitores da seção: ")
			leia(numero_eleitores)
		}enquanto(numero_eleitores!=100)
		para(inteiro contador=1; contador<=numero_eleitores; contador++)
		{
			escreva("Eleitor",  contador, "em quem você vota: ")
			leia(voto)

			se(voto == "13") 
			{
				coringa++
				votos[1]++
				se(coringa > maior_total_votos)
				{
					maior_total_votos = coringa
					candidato_eleito = "Coringa"
				}
			}senao se(voto == "22") 
			{
				batman++
				votos[2]++
				se(batman > maior_total_votos)
				{
					maior_total_votos = batman
					candidato_eleito = "Batman"
				}
			}senao se(voto == "55")
			{
				labareda++
				votos[3]++
				se(labareda > maior_total_votos)
				{
					maior_total_votos = labareda
					candidato_eleito = "Labareda"
				}
			}senao se(voto == "12")
			{
				
				robim++
				votos[4]++
				se(robim > maior_total_votos)
				{
					maior_total_votos = robim
					candidato_eleito = "Robim"
				}
			}senao se(voto == "15")
			{
				batGirl++
				votos[5]++
				se(batGirl > maior_total_votos)
				{
					maior_total_votos = batGirl
					candidato_eleito = "Batgirl"
				}
			}senao
			{
				nulo++
				votos[0]++
				se(nulo > maior_total_votos)
				{
					maior_total_votos = nulo
					candidato_eleito = "NULO"
				}
			}
		}

		para(inteiro contador=0; contador< numero_eleitores; contador++)
		{
			escreva("\n",candidatos[contador]," - ", votos[contador])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */