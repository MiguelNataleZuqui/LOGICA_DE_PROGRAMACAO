programa
{
	inclua biblioteca Matematica --> m
	funcao  inicio()
	{
		
		menu()
		inteiro opcao_escolhida
		leia(opcao_escolhida)
		
		seletor_programa(opcao_escolhida)
		se(opcao_escolhida != 0)
		{
		}
		
	}
	funcao final()
	{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ OBRIGADO POR  USAR   NOSSO                             ║\n")
		escreva("║ PROGRAMA DE RECURSOS HUMANOS                           ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
	}
	 funcao menu()
	
	{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ REGISTRO RH DOS FUNCIONARIOS                           ║\n")
		escreva("║ O PROGRAMA  REALIZARÁ  AS                              ║\n")
		escreva("║ SEGUINTES FUNÇÕES                                      ║\n")
		escreva("╠════════════════════════════════════════════════════════╣\n")
		escreva("║ 1- INSS                                                ║\n")
		escreva("║ 2- IRPF                                                ║\n")
		escreva("║ 3- Periculosidade                                      ║\n")
		escreva("║ 4- Horas Extras                                        ║\n")
		escreva("║ 5- Adicional Noturno                                   ║\n")
		escreva("╠════════════════════════════════════════════════════════╣\n")
		escreva("║                 ESCOLHA UM NÚMERO ACIMA :              ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")

	}

	funcao seletor_programa(inteiro opcao)
	{
		escolha(opcao)
		{
			caso 1:
				tela_inss()
  			pare
  			caso 2:
				tela_irpf()
  			pare
  			caso 3:
				tela_ferias()
  			pare  			
  			caso 0:
  				final()
  			pare
			caso contrario:
				escreva("Digite uma opção valida\n")
				inicio()
		}
			
	}
	funcao real salario_do_funcionario()
	{
		
		escreva("║ DIGITE SEU SALÁLARIO : ")
		real salario
		leia(salario)
 		retorne salario 
	}
	
	funcao real simulador_de_inss()
	{
		const real SALARIO_LIMITE1=1302.01 , SALARIO_LIMITE2=2571.30 , SALARIO_LIMITE3=3856.95 
		const real ALIQUOTA1=7.5, ALIQUOTA2=9.0, ALIQUOTA3=12.0, ALIQUOTA4=14.0
		const real VALOR_A_DEDUZIR=1302.0,VALOR_A_DEDUZIR2=2571.29 , VALOR_A_DEDUZIR3=3856.94 , TETO_DO_INSS=7507.49 
		real valor_do_inss[4]
		real valor_do_inss_oficial=0.00
		real salario_oficial=salario_do_funcionario()	
		
		se(salario_oficial<SALARIO_LIMITE1)
		{
			valor_do_inss[0]=salario_oficial*(ALIQUOTA1/100)
			para(inteiro i=0;i<=3;i++)
			{
				valor_do_inss_oficial=valor_do_inss_oficial+valor_do_inss[i]
			}
		}
		senao se(salario_oficial<SALARIO_LIMITE2)
		{
			valor_do_inss[0]=(VALOR_A_DEDUZIR)*(ALIQUOTA1/100)
			valor_do_inss[1]=(salario_oficial-VALOR_A_DEDUZIR)*(ALIQUOTA2/100)
			para(inteiro i=0;i<=3;i++)
			{
				valor_do_inss_oficial=valor_do_inss_oficial+valor_do_inss[i]
			}
			
		}
		senao se(salario_oficial<SALARIO_LIMITE3)
		{
			valor_do_inss[0]=(VALOR_A_DEDUZIR)*(ALIQUOTA1/100)
 			valor_do_inss[1]=(VALOR_A_DEDUZIR2-VALOR_A_DEDUZIR)*(ALIQUOTA2/100)
 			valor_do_inss[2]=(salario_oficial-VALOR_A_DEDUZIR2)*(ALIQUOTA3/100)
			para(inteiro i=0;i<=3;i++)
			{
				valor_do_inss_oficial=valor_do_inss_oficial+valor_do_inss[i]
			}
		}
		senao
		{
			valor_do_inss[0]=(VALOR_A_DEDUZIR)*(ALIQUOTA1/100)
 			valor_do_inss[1]=(VALOR_A_DEDUZIR2-VALOR_A_DEDUZIR)*(ALIQUOTA2/100)
			valor_do_inss[2]=(VALOR_A_DEDUZIR3-VALOR_A_DEDUZIR2)*(ALIQUOTA3/100)
			valor_do_inss[3]=(TETO_DO_INSS-VALOR_A_DEDUZIR3)*(ALIQUOTA4/100)
			para(inteiro i=0;i<=3;i++)
			{
				valor_do_inss_oficial=valor_do_inss_oficial+valor_do_inss[i]
			}
		}
		
			retorne valor_do_inss_oficial	
	}
	funcao real tela_inss()
	{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE INSS                                    ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		real inss=simulador_de_inss()
		limpa()
		inss= m.arredondar(inss, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║                   SEU INSS É IGUAL A:                  ║\n")
		escreva("║                        ",inss,"                          ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		retorne inss 
	}
	funcao real simulador_de_irpf()
	{
		const real SALARIO_LIMITE1=1903.99 ,SALARIO_LIMITE2= 2826.66 ,SALARIO_LIMITE3=3751.06 ,SALARIO_LIMITE4= 4664.68 
		const real ALIQUOTA1= 7.5,ALIQUOTA2= 15.00,ALIQUOTA3= 22.5,ALIQUOTA4= 27.5
		const real VALOR_A_DEDUZIR1=142.80 ,VALOR_A_DEDUZIR2=354.80 ,VALOR_A_DEDUZIR3=636.13 ,VALOR_A_DEDUZIR4=869.36
		real salario_oficial=salario_do_funcionario() 
		//constante provisoria 
		real inss = simulador_de_inss()
		real irpf_3=0
 		salario_oficial = salario_oficial-inss
 		
		se(salario_oficial<SALARIO_LIMITE1)
		{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ 	    NÃO É NECESSÁRIO ENTREGAR A DECLARAÇÃO         ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		}
		senao se (salario_oficial<SALARIO_LIMITE2)
		{
			irpf_3=salario_oficial*(ALIQUOTA1/100)-VALOR_A_DEDUZIR1
		}
		senao se (salario_oficial<SALARIO_LIMITE3)
		{
			irpf_3=salario_oficial*(ALIQUOTA2/100)-VALOR_A_DEDUZIR2
		}
		senao se (salario_oficial<SALARIO_LIMITE4)
		{
			irpf_3=salario_oficial*(ALIQUOTA3/100)-VALOR_A_DEDUZIR3
		}
		senao
		{
			irpf_3=salario_oficial*(ALIQUOTA4/100)-VALOR_A_DEDUZIR4
		}
 		retorne irpf_3
		}
	funcao real tela_irpf()
	{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE IRPF                                    ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		real irpf=simulador_de_irpf()
		limpa()
		irpf= m.arredondar(irpf, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║                   SEU IRPF É IGUAL A:                  ║\n")
		escreva("║                        ",irpf,"                           ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		retorne irpf 
	}
	funcao real calculador_de_ferias()
	{
		//calculo de férias |
		real salario_oficial=salario_do_funcionario()
		inteiro dias_ferias = 30
		real salario_bruto= salario_oficial
		real valor_ferias, terco_ferias, total_bruto 
		
		//constante provisoria |
		  real inss= simulador_de_inss()
		  real irpf_1= simulador_de_irpf()

		terco_ferias = salario_bruto /3

		total_bruto = salario_bruto + terco_ferias

		valor_ferias = total_bruto - inss - irpf_1

		valor_ferias= valor_ferias - salario_bruto
		
		retorne valor_ferias		
	}	
	funcao real tela_ferias()
	{
		real ferias=calculador_de_ferias()
		ferias= m.arredondar(ferias, 2)
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║               O VALOR TOTAL DA SUAS FERIÁS :           ║\n")
		escreva("║                        ",ferias,"                          ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		retorne ferias 
	}
}
