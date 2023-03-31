programa {
  funcao inicio() {
    real peso , excesso , multa
    escreva("digite o valor do peso: ")
    leia(peso)
    se (peso <= 50)
    {
      escreva("nao tem multa hoje")
    }
    senao
    {
      excesso = peso-50
      multa = excesso*4
      escreva("sua multa hoje foi: ", multa )
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */