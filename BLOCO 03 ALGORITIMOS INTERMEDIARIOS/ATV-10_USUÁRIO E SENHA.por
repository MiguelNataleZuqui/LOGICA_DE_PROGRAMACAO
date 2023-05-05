programa
{
	
	funcao inicio()
	{
		cadeia senha, login,login2,senha2
		
		
			faca
			{
				escreva("Digite seu login: ")
				leia (login)
				escreva("Digite sua senha: ")
				leia(senha)
				limpa()
				se(login==senha )
				{
					escreva("Essa senha nao é segura\n")
				}
				senao
				{
					escreva("USUÁRIO CADRASTADO\n")
				}
				
			}enquanto(login==senha )
			faca
		{
			faca
			{
				escreva("Digite seu login2: ")
				leia (login2)
				escreva("Digite sua senha2: ")
				leia(senha2)
				limpa()
				se(login2==senha2)
				{
					escreva("Essa senha nao é segura\n")
				}
				senao
				{
					escreva("USUÁRIO CADRASTADO\n")
				}
				
			}enquanto(login2==senha2 )
			se(login2==login )
			{
				escreva("Esse login já é existente\n")
			}
			
		}enquanto(login2==login)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 792; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */