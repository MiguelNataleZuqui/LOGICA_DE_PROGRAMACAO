programa
{
	real salario
	funcao inicio()
	{
		//FGTS
		real deposito_fgts
		inteiro mes_trabalhados
		escreva("digite seu salario: ")
		leia(salario)
		escreva("Quantos meses voce trabalhou: ")
		leia(mes_trabalhados)
		real fgts_mensal
		const real PORCENTAGEM_FGTS=8.0
		fgts_mensal= salario*(PORCENTAGEM_FGTS/100)
		deposito_fgts= mes_trabalhados*fgts_mensal
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 237; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {deposito_fgts, 7, 7, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */