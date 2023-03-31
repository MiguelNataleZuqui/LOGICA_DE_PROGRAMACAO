programa {
 real nota1, nota2, nota3, media,pontos_necessarios_Para_Passar
  funcao inicio()
   {
    escreva("digite a nota 1: ")
    leia(nota1)
    escreva("digite a nota 2: ")
    leia(nota2)
    escreva("digite a nota 3: ")
    leia(nota3)
    media= (nota1 + nota2 + nota3)/3
      se (media < 5 )
      {
        escreva("recuperação \n")
        pontos_necessarios_Para_Passar= 10 - media + 2
        escreva("você precisa de: ",pontos_necessarios_Para_Passar," pontos para passar")
      }
        senao se (media<7)
          {
              escreva("prova final \n")
              pontos_necessarios_Para_Passar= 10 - media
              escreva("você precisa de: ",pontos_necessarios_Para_Passar," pontos para passar")
          }
            senao
            {
          	escreva("aprovado")
            }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */