programa
{
	
	funcao inicio()
	{
		cadeia nomes[5],aluno_maior_media="a",aluno_menor_media="a"
		real notas1[5],notas2[5],media_individual[5],media_total=0,maior_media=0,menor_media=1000000000,media_t_contador=0
		para(inteiro i=0;i<5;i++)
		{
			escreva("\ninforme o nome do aluno(a) ",i+1,": ")
			leia(nomes[i])
			escreva("\ninforme o nota1 do aluno(a) ",i+1,": ")
			leia(notas1[i])
			escreva("\ninforme o nota2 do aluno(a) ",i+1,": ")
			leia(notas2[i])
			escreva("------------------------------------")
			
			media_individual[i]=(notas1[i]+notas2[i])/2
			se(media_individual[i]>maior_media)
			{
				maior_media=media_individual[i]
				aluno_maior_media=nomes[i]
				
			}
			se(media_individual[i]<menor_media)
			{
				menor_media=media_individual[i]
				aluno_menor_media=nomes[i]
				
			}
			media_total=media_total + media_individual[i]

			
		}
		para(inteiro i=0;i<5;i++)
		{
			escreva(nomes[i],"---sua média foi de : ",media_individual[i],"\n")
		}
		limpa()
		escreva("*****ESTATISTICAS DA TURMA*****\n")
		escreva("\nMedia da turma foi de : \n\n",media_total/5,"\n")
		escreva("\nmaior media foi: \n\n",maior_media," do aluno ",aluno_maior_media,"\n")
		escreva("\nmenor media foi: \n\n",menor_media," do aluno ",aluno_menor_media,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1265; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas1, 7, 7, 6}-{notas2, 7, 17, 6}-{media_individual, 7, 27, 16}-{media_total, 7, 47, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */