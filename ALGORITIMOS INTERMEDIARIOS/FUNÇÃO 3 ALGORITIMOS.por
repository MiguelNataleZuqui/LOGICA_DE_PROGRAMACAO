programa
{
	
	funcao inicio()
	{
		menu()
		inteiro opcao_escolhida
		escreva("\n\n")
		escreva("Escolha um programa")
		escreva("\n\n")
		leia(opcao_escolhida)

		seletor_programa(opcao_escolhida)
	}
	funcao seletor_programa(inteiro opcao)
	{
		escolha(opcao)
		{
			caso 1:
				calcula_passos()
			pare
			caso 2:
				calcula_notas()
			pare
			caso 3:
				senhor_e_senhora()
			pare
			caso 4:
				imc()
			pare
			caso 5:
				negativo_positivo()
			pare
			caso 6:
				vogal_ou_consoante()
			pare
			caso 7:
				maior_menor_numero_digitado()
			pare
			caso 8:
				supermecado()
			pare
			caso 9:
				primeiro_e_segundo_nome()
			pare
			caso 10:
				idade()
			pare
			caso 11:
				de_maior_ou_nao()
			pare
			caso 12:
				mes_em_extenso()
			pare
			caso 13:
				doador_de_sangue()
			pare
			caso 14:
				posto_de_gasolina()
			pare
			caso 15:
				escreva("\nMUITO OBRIGADO VOLTE SEMPRE")
			pare
			caso contrario:
				escreva("Digite uma opção valida")
				inicio()
			
		}
	}
	funcao menu()
	
	{
		escreva("Programa MULT TAREFAS")
		escreva("\n----------------------------")
		escreva("\n")
		escreva("1-Programa que calcula passos")
		escreva("\n")
		escreva("2-Programa que calcula notas")
		escreva("\n")
		escreva("3-Programa da senhor e senhora")
		escreva("\n")
		escreva("4- Programa calculadora de IMC")
		escreva("\n")
		escreva("5- Programa Positivo e negativo")
		escreva("\n")
		escreva("6- Programa verificador se é vogal ou consoante")
		escreva("\n")
		escreva("7- Programa Maior e menor numero digitado")
		escreva("\n")
		escreva("8- Programa Supermecado")
		escreva("\n")
		escreva("9- Programa Primeiro e segundo nome")
		escreva("\n")
		escreva("10- Programa Ano de nascimento")
		escreva("\n")
		escreva("11- Programa Verifica se é ou não maior de idade")
		escreva("\n")
		escreva("12- Programa Mês em formato numerico")
		escreva("\n")
		escreva("13- Programa Doador de Sangue")
		escreva("\n")
		escreva("14- Programa Posto de Gasolina")
		escreva("\n")
		escreva("15- Finalizar o programa")
		
		escreva("\n----------------------------")
	}
	funcao logico volta_ao_menu()
	{
		caracter s_ou_n
		logico sair
		
		faca{
			
			escreva("\nQuer repetir esse programa(s)SIM/(n)NÃO: \n")
			leia(s_ou_n)
			se(s_ou_n == 's' ou s_ou_n == 'n' )
			{
				sair=falso
			}
			senao
			{
				sair=verdadeiro
			}
		}enquanto(sair)
		se(s_ou_n=='s')
		{
			retorne verdadeiro
		}
		senao
		{
			retorne falso
		}
	}
	
	funcao calcula_passos()
	{
		escreva("Calcular passos")
		escreva("\n---------------------------\n")
		const real MEDIDA_DE_METRO_POR_PASSO=0.82
		real distancia_km, quantidade_dos_passos 
		escreva("Qual a distância percorrida: \n")
		escreva("Distancia em km =  ")
		leia(distancia_km)
		
		quantidade_dos_passos= distancia_km * (1000 / MEDIDA_DE_METRO_POR_PASSO)
		limpa()
		
		escreva("\n",distancia_km," KM é equivalente a "," ",quantidade_dos_passos," Passos")
		escreva("\n\n")
		
		se(volta_ao_menu())
		{
			calcula_passos()
		}	
		senao 
		{
			inicio()
		}
	}
	
	funcao calcula_notas()
	{
	  real nota1, nota2, nota3, media,pontos_necessarios_Para_Passar
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
	   se(volta_ao_menu())
		{
			calcula_passos()
		}	
		senao 
		{
			inicio()
		}
	}
	
	funcao senhor_e_senhora()
	{
		cadeia nome
		caracter sexo

		escreva("Qual seu nome?\n ")
		leia(nome)
		escreva("Qual seu sexo? \n")
		leia(sexo)
		se (sexo=='m')
		{
			escreva("Bem dia, senhor", nome)
		}
		senao
		{
			se (sexo=='f')
			{
				escreva("Bem dia, senhora ",nome)
			}
			senao
			{
				escreva("Para a identificação do gênero digite\n")
				escreva("\n*******\n")
				escreva("m-Homem\nf-Mulher")
				escreva("\n*******\n")
			}
		}
		se(volta_ao_menu())
		{
			calcula_passos()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao imc()
	{
		real peso, altura, imc
		escreva("Digite seu peso: \n\n")
		leia(peso)
		escreva("\nDigite sua altura: \n\n")
		leia(altura)
		imc=peso/(altura*altura)
		escreva("Seu IMC é de : \n\n",imc,"\n\n")
		se(imc>=17)
		{
			se (imc>18.49)
			{
				se(imc<24.99)
				{
					se(imc<29.99)
					{
						se(imc<34.99)
						{
							se(imc>39.99)
							{
								escreva("obesidade III(morbida)")
							}
							senao
							{
								escreva("obesidade II(severa)")
							}
						}
						senao
						{
							escreva("obesidade I")
						}
					}
					senao
					{
						escreva("acima do peso")
					}
				}
				senao
				{
					escreva("peso normal")
				}
			}
			senao
			{
				escreva("abaixo do peso")
			}
		}
		senao
		{
			escreva("muito abaixo do peso")
		}
	}
	funcao negativo_positivo()
	{
		real numero
		escreva("informe o numero: \n\n")
		leia(numero)
		se(numero<0)
		{
			escreva("\nValor negativo")
		}
		senao
		{
			escreva("\nValor positivo")
		}
				se(volta_ao_menu())
		{
			negativo_positivo()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao vogal_ou_consoante()
	{
		caracter letra
		escreva("Informe a letra: \n\n")
		leia(letra)
		escolha(letra)
		{
			caso 'a':
				escreva("\né vogal")
			pare
			caso 'e':
				escreva("\né vogal")
			pare
			caso 'i':
				escreva("\né vogal")
			pare
			caso 'o':
				escreva("\né vogal")
			pare
			caso 'u':
				escreva("\né vogal")
			pare
			caso contrario:
				escreva("\né consoante")
		}
				se(volta_ao_menu())
		{
			vogal_ou_consoante()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao maior_menor_numero_digitado()
	{
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
		    		se(volta_ao_menu())
		{
			maior_menor_numero_digitado()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao supermecado()
	{
		    real preco_produto1, preco_produto2, preco_produto3
		    cadeia produto1,produto2,produto3
		    escreva("Usuário me informe o nome do primeiro produto: \n")
		    leia(produto1)
		    escreva("Me diga agora o valor dele?\n")
		    leia(preco_produto1)
		    escreva("Usuário me informe o nome do segundo produto: \n")
		    leia(produto2)
		    escreva("Me diga agora o valor dele? \n")
		    leia(preco_produto2)
		    escreva("Usuário me informe o nome do terceiro produto \n")
		    leia(produto3)
		    escreva("Me diga agora o valor dele? \n")
		    leia(preco_produto3)
		
		    se(preco_produto1<preco_produto2)
		    {
		      se(preco_produto1<preco_produto3)
		      {
		        escreva("Te recomendo comprar ",produto1)
		        
		      }
		      senao
		      {
		        escreva("Te recomendo comprar ",produto3)
		      }
		    }
		    senao
		    {
		      se(preco_produto2 < preco_produto3)
		      {
		        escreva("Te recomendo comprar ",produto2)
		      }
		        senao 
		      {
		        escreva("Te recomendo comprar ",produto1)
		      }
		    }
		    		se(volta_ao_menu())
		{
			supermecado()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao primeiro_e_segundo_nome()
	{
		cadeia nome, sobrenome
		escreva("Digite seu nome: \n")
		leia(nome)
		escreva("Digite seu  sobrenome: \n")
		leia(sobrenome)
		escreva(sobrenome,nome)
				se(volta_ao_menu())
		{
			primeiro_e_segundo_nome()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao idade()
	{
		const inteiro ANO_ATUAL=2023
		inteiro ano_de_nascimento
		escreva("Digite o ano que vc nasceu: ")
		leia(ano_de_nascimento)
		escreva("sua idade é:  ",ANO_ATUAL-ano_de_nascimento)
				se(volta_ao_menu())
		{
			idade()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao de_maior_ou_nao()
	{
		escreva("Digite sua idade")
		inteiro idade_a
		leia (idade_a)
		se(idade_a >18)
		{
			escreva("É DE MAIOR")
		}
		senao
		{
			escreva("NÃO É DE MAIOR")
		}
				se(volta_ao_menu())
		{
			de_maior_ou_nao()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao mes_em_extenso()
	{
		inteiro mes_do_ano
		escreva("Digite o mês em formato numérico: ")
		leia(mes_do_ano)
		escolha(mes_do_ano) 
		{
			caso 1:
				escreva("Janeiro")
			pare
			caso 2:
				escreva("Fevereiro")
			pare
			caso 3:
				escreva("Março")
			pare
			caso 4:
				escreva("Abril")
			pare
			caso 5:
				escreva("Maio")
			pare
			caso 6:
				escreva("Junho")
			pare
			caso 7:
				escreva("Julho")
			pare
			caso 8:
				escreva("Agosto")
			pare
			caso 9:
				escreva("Setembro")
			pare
			caso 10:
				escreva("Outubro")
			pare
			caso 11:
				escreva("Novembro")
			pare
			caso 12:
				escreva("Dezembro")
			pare
			caso contrario:
				escreva("esse mês nao existe")
		}
		se(volta_ao_menu())
		{
			mes_em_extenso()
		}	
		senao 
		{
			inicio()
		}
		
		
	
}
	funcao doador_de_sangue()
	{
		inteiro idade
		real peso
		logico  bebeu_alcool,fez_tatuagem
		escreva("Qual sua idade? \n")
		leia(idade)
		escreva("Qual seu peso? \n")
		leia(peso)
		escreva("Você fez alguma tatuagem no último ano \n(VERDADEIRO ou FALSO).\n")
		leia(fez_tatuagem)
		escreva("Você ingeriu álcool nas últimas 12 horas \n(VERDADEIRO ou FALSO)?\n ")
		leia(bebeu_alcool)

		se(idade<19 e idade>60)
		{
			se(peso<50)
			{
			   se(fez_tatuagem == falso)
			   {
			   	se(bebeu_alcool == falso)
			   	{
			   		escreva("\n","Parabéns, você pode doar sangue.") 
			   	}
			   	senao
			   	{
			   		escreva("\n","Infelizmente, você não pode ser doador.")
			   	}
			   }
			   senao
			   {
			   	escreva("\n","Infelizmente, você não pode ser doador.")
			   }
			}
			senao
			{
				escreva("\n","Infelizmente, você não pode ser doador.")
			}
		}
		senao
		{
			escreva("\n","Infelizmente, você não pode ser doador.")
		}
				se(volta_ao_menu())
		{
			doador_de_sangue()
		}	
		senao 
		{
			inicio()
		}
	}
	funcao posto_de_gasolina()
	{
		escreva("ta em casa")
				se(volta_ao_menu())
		{
			posto_de_gasolina()
		}	
		senao 
		{
			inicio()
		}
	}
}

	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @DOBRAMENTO-CODIGO = [3, 14, 69, 107, 135, 161, 197, 233, 286, 337, 308, 342, 383, 432, 449, 465, 487, 545, 597];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */