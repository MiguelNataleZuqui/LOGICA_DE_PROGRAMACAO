programa {
  funcao inicio() {
    inteiro cor_escolhida
    escreva("QUAL COR DE CD VC QUER\n")
    escreva("1-verde\n")
    escreva("2-azul\n")
    escreva("3-vermelho\n")
    escreva("4-preto\n")
    leia(cor_escolhida)

    se(cor_escolhida==1)
    {
      escreva("10,00R$")
    }
    senao se(cor_escolhida==2)
    {
      escreva("20,00R$")
    }
    senao se(cor_escolhida==3)
    {
      escreva("30,00R$")
    }
    senao se(cor_escolhida==4)
    {
      escreva("40,00R$")
    }
    senao
    {
      escreva("nao temos essa opção")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 555; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */