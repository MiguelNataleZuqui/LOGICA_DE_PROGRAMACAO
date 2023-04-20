programa
{
	real salario
	funcao inicio()
	{
		//IRPF
		const real SALARIO_LIMITE1=1903.99,SALARIO_LIMITE2= 2826.66,SALARIO_LIMITE3=3751.06,SALARIO_LIMITE4= 4664.68
		const real ALIQUOTA1= 7.5,ALIQUOTA2= 15.00,ALIQUOTA3= 22.5,ALIQUOTA4= 27.5
		const real VALOR_A_DEDUZIR1=142.80,VALOR_A_DEDUZIR2=354.80,VALOR_A_DEDUZIR3=636.13,VALOR_A_DEDUZIR4=869.36
		//constante provisoria
		const real INSS=180
		real irpf
		escreva("Digite seu salario: ")
		leia(salario)
		se(salario<SALARIO_LIMITE1)
		{
			escreva("Não é necessario entregar a declaração")
		}
		senao se (salario<SALARIO_LIMITE2)
		{
			irpf=salario*(ALIQUOTA1/100)-INSS
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 402; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {irpf, 12, 7, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */