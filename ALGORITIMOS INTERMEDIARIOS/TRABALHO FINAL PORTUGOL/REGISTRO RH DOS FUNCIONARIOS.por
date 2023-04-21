programa
{
	inclua biblioteca Matematica --> m
	real salario_oficial=salario_do_funcionario()
	funcao inicio()
	{
		
		menu()
		inteiro opcao_escolhida
		leia(opcao_escolhida)
		
		seletor_programa(opcao_escolhida)
		se(opcao_escolhida != 0)
		{
				mostra_o_detalhamento()
		}
		
	}
	funcao final()
	{
		escreva("╔══════════════════════════════╗\n")
		escreva("║ OBRIGADO POR  USAR   NOSSO   ║\n")
		escreva("║ PROGRAMA DE RECURSOS HUMANOS ║\n")
		escreva("╚══════════════════════════════╝\n")
	}
	funcao menu()
	
	{
		escreva("╔══════════════════════════════╗\n")
		escreva("║ REGISTRO RH DOS FUNCIONARIOS ║\n")
		escreva("║ O PROGRAMA  REALIZARÁ  AS    ║\n")
		escreva("║ SEGUINTES FUNÇÕES            ║\n")
		escreva("╠══════════════════════════════╣\n")
		escreva("║  INSS                        ║\n")
		escreva("║  IRPF                        ║\n")
		escreva("║  Periculosidade              ║\n")
		escreva("║  Horas Extras                ║\n")
		escreva("╠══════════════════════════════╣\n")
		escreva("║ PARA CONTINUAR NO PROGRAMA   ║\n")
		escreva("║ DIGITE 1                     ║\n")
		escreva("║ PARA FINALIZAR O PROGRAMA    ║\n")
		escreva("║ DIGITE 0                     ║\n")
		escreva("╚══════════════════════════════╝\n")

	}
	funcao mostra_o_detalhamento()
	{
		real inss=simulador_de_inss()
		real irpf=simulador_de_irpf()
		real salario_das_ferias=calculador_de_ferias()
		real add_de_periculosidade=simulador_de_periculosidade()
		real piss=calculo_do_piss()
		irpf=m.arredondar(irpf, 2)
		inss=m.arredondar(inss, 2)
		add_de_periculosidade=m.arredondar(add_de_periculosidade, 2)
		salario_das_ferias=m.arredondar(salario_das_ferias, 2)
		piss= m.arredondar(piss, 2)
		escreva("\n╔═════════════════════════════════════╗\n")
		escreva("║         DETALHAMENTO                ║\n")
		escreva("╠═════════════════════════════════════╣\n")
		escreva("║  INSS:",inss,"                        ║\n")
		escreva("║  IRPF:",irpf,"                         ║\n")
		escreva("║  PERICULOSIDADE:",add_de_periculosidade,"              ║\n")
		escreva("║  FERIAS:",salario_das_ferias,"                      ║\n")
		escreva("║  PISS:",piss,"                       ║\n")
		escreva("╚═════════════════════════════════════╝\n")
	}
	funcao seletor_programa(inteiro opcao)
	{
		escolha(opcao)
		{
			caso 1:
			
				
								
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
		escreva("\n\nDIGITE SEU SALARIO: ")
		real salario
		leia(salario)
		retorne salario
	}
	funcao real simulador_de_inss()
	{
		const real SALARIO_LIMITE1=1302.01,SALARIO_LIMITE2=2571.30,SALARIO_LIMITE3=3856.95
		const real ALIQUOTA1=7.5, ALIQUOTA2=9.0, ALIQUOTA3=12.0, ALIQUOTA4=14.0
		const real VALOR_A_DEDUZIR=1302.0,VALOR_A_DEDUZIR2=2571.29,VALOR_A_DEDUZIR3=3856.94,TETO_DO_INSS=7507.49
		real valor_do_inss[4]
		real valor_do_inss_oficial=0
		
		
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
		limpa()
			retorne valor_do_inss_oficial	
	}
	funcao real simulador_de_irpf()
	{
		const real SALARIO_LIMITE1=1903.99,SALARIO_LIMITE2= 2826.66,SALARIO_LIMITE3=3751.06,SALARIO_LIMITE4= 4664.68
		const real ALIQUOTA1= 7.5,ALIQUOTA2= 15.00,ALIQUOTA3= 22.5,ALIQUOTA4= 27.5
		const real VALOR_A_DEDUZIR1=142.80,VALOR_A_DEDUZIR2=354.80,VALOR_A_DEDUZIR3=636.13,VALOR_A_DEDUZIR4=869.36
		//constante provisoria
		 real inss=simulador_de_inss()
		
		real irpf=0
		salario_oficial=salario_oficial-inss
		se(salario_oficial<SALARIO_LIMITE1)
		{
			escreva("Não é necessario entregar a declaração")
		}
		senao se (salario_oficial<SALARIO_LIMITE2)
		{
			irpf=salario_oficial*(ALIQUOTA1/100)-VALOR_A_DEDUZIR1
		}
		senao se (salario_oficial<SALARIO_LIMITE3)
		{
			irpf=salario_oficial*(ALIQUOTA2/100)-VALOR_A_DEDUZIR2
		}
		senao se (salario_oficial<SALARIO_LIMITE4)
		{
			irpf=salario_oficial*(ALIQUOTA3/100)-VALOR_A_DEDUZIR3
		}
		senao
		{
			irpf=salario_oficial*(ALIQUOTA4/100)-VALOR_A_DEDUZIR4
		}
		retorne irpf		
	}
	funcao real simulador_de_periculosidade()
	{
				real add_de_periculosidade
				add_de_periculosidade=0.3*salario_oficial
				retorne add_de_periculosidade
	}
	funcao real calculador_de_ferias()
	{
		//calculo de férias
		inteiro dias_ferias = 30
		real salario_bruto = salario_oficial
		real valor_ferias, terco_ferias, total_bruto
		
		//constante provisoria
		 real inss = simulador_de_inss() 
		 real irpf = simulador_de_irpf()

		terco_ferias = salario_bruto /3

		total_bruto = salario_bruto + terco_ferias

		valor_ferias = total_bruto - inss - irpf

		valor_ferias= valor_ferias - salario_bruto
		
		retorne valor_ferias		
	}
	funcao real calculo_do_piss()
	{
		real salario=salario_oficial
		escreva("╔══════════════════════════════╗\n")
		escreva("║ PROGRAMA CALCULADOR DE PISS  ║\n")
		escreva("╚══════════════════════════════╝\n")
		inteiro tempo_pis, tempo_trabalhados, meses_trabalhados, anos_trabalhados
		real valor_pis
		
		escreva("Você está cadastrado no PIS há quanto tempo? ")
		leia(tempo_pis)

		escreva("Você tem quantos anos de empresa? ")
		leia(anos_trabalhados)
		
		meses_trabalhados =  anos_trabalhados * 12

		valor_pis = salario /12 * meses_trabalhados
		
		//quantidade de anos
		se( tempo_pis < 5)
		{
			escreva("Você não tem direito de isufruir do programa PIS \n")
		}
		senao
		{
			escreva("Você tem direito ao programa PIS, vamos fazer o cálculo do seu PIS")
		}

		valor_pis = m.arredondar(valor_pis, 3)
		retorne  valor_pis
		
	}
}
