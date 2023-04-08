programa
{
	
	funcao inicio()
	{
		real quilometros_por_litros
		real litros_atual
		real distancia_pra_percorrer
		real precisa_abastecer 
		real quantidade_de_litros_para_percorrer_a_distancia
		escreva("Quantos quilômetros o carro percorre por litro?\n")
		leia(quilometros_por_litros)
		escreva("Quantos litros tem no carro atualmente?\n")
		leia(litros_atual)
		escreva("Qual distância (em Km) você deseja percorrer ?\n")
		leia(distancia_pra_percorrer)

		quantidade_de_litros_para_percorrer_a_distancia =  distancia_pra_percorrer/quilometros_por_litros
		precisa_abastecer = quantidade_de_litros_para_percorrer_a_distancia - litros_atual

		se(precisa_abastecer<=0)
		{
			escreva("Você não precisa abastecer")
		}
		senao
		{
			escreva("Você precisa abastecer ", precisa_abastecer ," litros.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */