programa
{
	
	funcao inicio()
	{
		inteiro quantidade_de_aluno
		real nota_do_aluno,media,soma=0,media_turma
		escreva("Informe a quantidade de alunos na turma: ")
		leia(quantidade_de_aluno)
		para(inteiro i=1;i<=quantidade_de_aluno;i++)
		{
			escreva("digite as notas do aluno",i,":\n ")
			leia(nota_do_aluno)
			leia(nota_do_aluno)
			media=(nota_do_aluno+nota_do_aluno)/2
			soma= (media+soma)
		}
		media_turma=soma/quantidade_de_aluno
		escreva("media dos alunos é : ",media_turma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 497; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */