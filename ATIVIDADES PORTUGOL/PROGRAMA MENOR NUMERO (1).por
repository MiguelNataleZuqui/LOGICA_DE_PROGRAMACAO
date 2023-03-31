programa {
  funcao inicio() {
    real num1, num2, num3
    escreva("valor do numero 1: ")
    leia(num1)
    escreva("valor do numero 2: ")
    leia(num2)
    escreva("valor do numero 3: ")
    leia(num3)

    se(num1<num2)
    {
      se(num1<num3)
      {
        escreva(num1,"menor numero")
      }
      senao
      {
        escreva(num3,"menor numero")
      }
    }
    senao
    {
      se(num2 < num3)
      {
        escreva(num2,"menor numero")
      }
        senao 
      {
        escreva(num1," menor numero")
      }
    }
  }
}
