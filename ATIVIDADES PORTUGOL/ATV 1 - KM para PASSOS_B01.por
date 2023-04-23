programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		const real MEDIDA_DE_METRO_POR_PASSO=0.82
		real distancia_km, quantidade_dos_passos 
		escreva("Qual a distância percorrida: \n")
		escreva("Distancia em km =  ")
		leia(distancia_km)
		
		quantidade_dos_passos= distancia_km * (1000 / MEDIDA_DE_METRO_POR_PASSO)
		
		escreva("\n",distancia_km," KM é equivalente a "," ",quantidade_dos_passos," Passos")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
