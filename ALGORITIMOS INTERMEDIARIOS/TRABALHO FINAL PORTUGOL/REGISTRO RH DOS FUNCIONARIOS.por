programa
{
	inclua biblioteca Arquivos --> a
	inclua biblioteca ServicosWeb --> WS
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> t
	inclua biblioteca Matematica --> m
	
	//=================================================================================================================================================
	// FUNCÕES DE MENU E TELA 
	//=================================================================================================================================================
	funcao  inicio()
	{
		banco_de_dados()
		menu()
		inteiro opcao_escolhida
		leia(opcao_escolhida)
		
		seletor_programa(opcao_escolhida)
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
		escreva("║ 2- Valor das Férias                                    ║\n")
		escreva("║ 4- FGTS Mensal                                         ║\n")
		escreva("║ 5- Depósito do FGTS                                    ║\n")
		escreva("║ 6- Seguro Desemprego                                   ║\n")
		escreva("║ 7- Vale Transporte                                     ║\n")
		escreva("║ 8- PIS                                                 ║\n")
		escreva("║ 9- ADICIONAL NOTURNO                                   ║\n")
		escreva("║ 10- PERICULOSIDADE                                     ║\n")
		escreva("║ 11- HORA EXTRA                                         ║\n")
		escreva("║ 12- SALÁRIO LÍQUIDO DO FINAL DO MÊS                    ║\n")
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
  			caso 4:
				tela_fgts_mensal()
  			pare
  			caso 5:
				tela_deposito_fgts()
  			pare
  			caso 6:
				tela_seguro_desemprego()
  			pare
  			caso 7:
				tela_vale_transporte()
  			pare
  			caso 8:
				tela_pis()
  			pare
  			caso 9:
				tela_adicional_noturno()
  			pare
  			caso 10:
				tela_periculosidade()
  			pare
  			caso 11:
				tela_hora_extra()
  			pare
  			caso 12:
				tela_detalhamento()
  			pare     			    			
  			caso 0:
  				final()
  			pare
			caso contrario:
				escreva("Digite uma opção valida\n")
				inicio()
		}
			
	}
	funcao detalhamento(cadeia salario_bruto_p,real hora_extra_p,real add_noturno_p, real periculosidade_p, real fgts_mensal_p,real inss_p,real irpf_p, real vale_transporte_p,real salario_liquido_p)
	{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ DETALHAMENTO:                                          ║\n")
		escreva("║ SERÃO EXIBIDOS SEUS PROVENTOS E DESCONTOS E, AO FINAL, ║\n")
		escreva("║ E AO FINAL SERÁ CALCULADO SEU SALÁRIO LÍQUIDO MENSAL   ║\n")
		escreva("╠════════════════════════════════════════════════════════╣\n")
		escreva("║  SALARIO BASE:",salario_bruto_p,"                                     ║\n")
		escreva("║  ---PROVENTOS--                                        ║\n")
		escreva("║  HORA EXTRA: + R$ ",hora_extra_p,"                                ║\n")
		escreva("║  ADICIONAL NOTURNO: + R$ ",add_noturno_p,"                         ║\n")
		escreva("║  PERICULOSIDADE : + R$ ",periculosidade_p,"                           ║\n")
		escreva("║  DEPÓSITO FGTS: + R$ ",fgts_mensal_p,"                             ║\n")
		escreva("║  ---DESCONTOS---                                       ║\n")
		escreva("║  INSS:- R$ ",inss_p,"                                      ║\n")
		escreva("║  IRPF: - R$ ",irpf_p,"                                      ║\n")
		escreva("║  Vale Transporte: - R$ ",vale_transporte_p,"                           ║\n")
		escreva("╠════════════════════════════════════════════════════════╣\n")
		escreva("║                     SALÁRIO LÍQUIDO                    ║\n")
		escreva("║                         ",salario_liquido_p,"                        ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		
	}
	funcao tela_detalhamento()
	{
		cadeia salario
		real salario_of
		real mandar_tudo
		real salario_liquido
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ DETALHAMENTO:                                          ║\n")
		escreva("║ DESCUBRA SEU SALÁRIO LÍQUIDO MENSAL RESPONDENDO        ║\n")
		escreva("║ ALGUMAS PERGUNTAS :                                    ║\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		leia(salario)
		salario_of=convertor_de_cadeia_para_real(salario)
		
		real vale_transporte = segunda_tela_vale_transporte(salario_of)
		
		real periculosidade=0 
		periculosidade = segunda_tela_periculosidade(salario_of)
		
		real hora_extra
		real carga_horaria=220
		hora_extra=segunda_tela_hora_extra(salario_of, carga_horaria)
		
		real add_noturno=segunda_tela_add_noturno(salario_of, carga_horaria)
		
		real inss=calculador_de_inss(salario_of)
		
		real irpf=calculador_de_irpf(salario_of, inss)
		
		real fgts_mensal=calculador_fgts_mensal(salario_of)
		salario_liquido=((hora_extra+add_noturno+fgts_mensal+periculosidade)-(inss+irpf+vale_transporte))+salario_of
		salario_liquido= m.arredondar(salario_liquido, 2)
		
		inss=m.arredondar(inss, 2)
		irpf=m.arredondar(irpf, 2)
		fgts_mensal=m.arredondar(fgts_mensal, 2)
		hora_extra=m.arredondar(hora_extra, 2)
		add_noturno=m.arredondar(add_noturno, 2)

		detalhamento(salario, hora_extra, add_noturno, periculosidade, fgts_mensal, inss, irpf, vale_transporte,salario_liquido)
		se(volta_ao_menu())
		{
			
			tela_detalhamento()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	
	//=================================================================================================================================================
	// FUNCÕES DE CALCULADORAS E VERIFICADORES
	//=================================================================================================================================================
	
	// CALCULADOR DE INSS
	
	funcao real calculador_de_inss(real salario)
	{
		const real SALARIO_LIMITE1=1302.01 , SALARIO_LIMITE2=2571.30 , SALARIO_LIMITE3=3856.95 
		const real ALIQUOTA1=7.5, ALIQUOTA2=9.0, ALIQUOTA3=12.0, ALIQUOTA4=14.0
		const real VALOR_A_DEDUZIR=1302.0,VALOR_A_DEDUZIR2=2571.29 , VALOR_A_DEDUZIR3=3856.94 , TETO_DO_INSS=7507.49 
		real valor_do_inss[4]
		real valor_do_inss_oficial=0.00
		real salario_oficial=salario	
		
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
	funcao tela_inss()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE INSS                                    ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real inss=calculador_de_inss(salario_oficial)
		limpa()
		inss= m.arredondar(inss, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║                   SEU INSS É IGUAL A:                  ║\n")
		escreva("║                        ",inss,"                          ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_inss()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
		
		 
	}
	
	//CALCULADOR DE IRPF
	
	funcao real calculador_de_irpf(real salario_p,real inss_p)
	{
		const real SALARIO_LIMITE1=1903.99 ,SALARIO_LIMITE2= 2826.66 ,SALARIO_LIMITE3=3751.06 ,SALARIO_LIMITE4= 4664.68 
		const real ALIQUOTA1= 7.5,ALIQUOTA2= 15.00,ALIQUOTA3= 22.5,ALIQUOTA4= 27.5
		const real VALOR_A_DEDUZIR1=142.80 ,VALOR_A_DEDUZIR2=354.80 ,VALOR_A_DEDUZIR3=636.13 ,VALOR_A_DEDUZIR4=869.36
		real salario_oficial=salario_p
		//constante provisoria 
		real inss = inss_p
		real irpf=0
 		salario_oficial = salario_oficial-inss
 		
		se(salario_oficial<SALARIO_LIMITE1)
		{
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ 	    NÃO É NECESSÁRIO ENTREGAR A DECLARAÇÃO         ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
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
	funcao tela_irpf()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE IRPF                                    ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real inss= calculador_de_inss(salario_oficial)
		real irpf= calculador_de_irpf(salario_oficial,inss)
		limpa()
		irpf= m.arredondar(irpf, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║                   SEU IRPF É IGUAL A:                  ║\n")
		escreva("║                        ",irpf,"                           ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_irpf()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
		
	}
	
	// CALCULADOR DE FERIAS
	
	funcao real calculador_de_ferias(real salario_p,real inss_p, real irpf_p)
	{
		//calculo de férias |
		real salario_oficial=salario_p
		inteiro dias_ferias = 30
		real salario_bruto= salario_oficial
		real valor_ferias, terco_ferias, total_bruto 
		
		//constante provisoria |
		  real inss= inss_p
		  real irpf_1= irpf_p

		terco_ferias = salario_bruto /3

		total_bruto = salario_bruto + terco_ferias

		valor_ferias = total_bruto - inss - irpf_1

		valor_ferias= valor_ferias - salario_bruto
		
		retorne valor_ferias		
	}	
	funcao tela_ferias()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA SALARIO DE FÁRIAS                          ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real inss=calculador_de_inss(salario_oficial)
		real irpf=calculador_de_irpf(salario_oficial, inss)
		real ferias=calculador_de_ferias(salario_oficial,inss,irpf)
		ferias= m.arredondar(ferias, 2)
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║               O VALOR TOTAL DA SUAS FERIÁS :           ║\n")
		escreva("║                        ",ferias,"                          ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_ferias()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
		
	}
	
	// CALCULADOR FGTS MENSAL
	
	funcao real calculador_fgts_mensal(real salario_p)
	{
		real salario=salario_p
		real fgts_mensal
		const real PORCENTAGEM_FGTS=8.0
		fgts_mensal= salario*(PORCENTAGEM_FGTS/100)
		retorne fgts_mensal
	}
	funcao tela_fgts_mensal()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE FGTS MENSAL                             ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real fgts_mensal=calculador_fgts_mensal(salario_oficial)
		limpa()
		fgts_mensal= m.arredondar(fgts_mensal, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║                SEU FGTS MENSAL É IGUAL A:              ║\n")
		escreva("║                        ",fgts_mensal,"                           ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_fgts_mensal()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	
	//CALCULADOR FGTS DEPOSITO
	
	funcao real calculador_do_deposito_fgts(real salario_p)
	{
		real deposito_fgts
		inteiro mes_trabalhados
		real salario= salario_p
		escreva("║ Quantos meses você trabalhou: ")
		leia(mes_trabalhados)
		real fgts_mensal
		const real PORCENTAGEM_FGTS=8.0
		fgts_mensal= salario*(PORCENTAGEM_FGTS/100)
		deposito_fgts= mes_trabalhados*fgts_mensal
		retorne deposito_fgts
	}
	funcao tela_deposito_fgts()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DO DEPÓSITO FGTS                           ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real deposito_fgts=calculador_do_deposito_fgts(salario_oficial)
		limpa()
		deposito_fgts= m.arredondar(deposito_fgts, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║                 SEU DEPÓSITO É IGUAL A:                ║\n")
		escreva("║                       ",deposito_fgts,"                           ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_deposito_fgts()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	
	//VERIFICADOR SEGURO DESEMPREGO
	
	funcao cadeia verificador_de_seguro_desemprego()
	{
		const inteiro primeira_solicitacao = 12, segunda_solicitacao = 9, terceira_solicitacao = 6, mumero_cinco_parcelas = 24, numero_quatro_parcelas = 11, numero_tres_parcelas = 23
		cadeia resposta_do_colaborador, resposta
		inteiro tempo_trabalhado
		cadeia seguro_desemprego
		escreva("║ O colaborador foi dispemsado por justa causa?(s)SIM/(n)NÃO \n")
		leia( resposta_do_colaborador)

		resposta_do_colaborador = Texto.caixa_baixa(resposta_do_colaborador)
		
		se( Texto.caixa_baixa(resposta_do_colaborador) == "s")
		{
			escreva("║ O colaborador está em situação de desemprego?(s)SIM/(n)NÃO \n")
			leia( resposta_do_colaborador)

			se(Texto.caixa_baixa(resposta_do_colaborador) == "s")
			{
				escreva("║ O colaborador possui renda propria?(s)SIM/(n)NÃO \n")
				leia( resposta_do_colaborador)

				se(Texto.caixa_baixa(resposta_do_colaborador) == "n")
				{
					escreva("║ O  colaborador está recebendo beneficio de prestação continua da previdência social? \n")
					escreva(" *** exceto pensão por morte ou auxílio-acidente ***** \n")
					leia(resposta_do_colaborador)

					se(Texto.caixa_baixa(resposta_do_colaborador) == "n")
					{
						inteiro numero

						escreva("║ 1- Caso seja primeira solicitação do colaborador \n")
						escreva("║ 2- Caso seja segunda solicitação do colabolaborador \n")
						escreva("║ 3- Caso seja terceira ou mais solicitação do colabolaborador \n")
						leia(numero)


						escreva("║ informe a quantidade de tempo do colaborador está na empresa (em meses): \n")
						leia( tempo_trabalhado)
						escolha(numero)
						{
							caso 1:
								se(tempo_trabalhado >= primeira_solicitacao)
								{
									escreva("\n║ O colaborador tem direito ao seguro desemprego \n")
									se(tempo_trabalhado >= primeira_solicitacao e tempo_trabalhado > mumero_cinco_parcelas)
									{
										seguro_desemprego=" O colaborador tem direito 5 parcelas"
									}
									senao
									{
										seguro_desemprego=" O colaborador tem direito 4 parcelas"
									}
								}
								senao
								{
									seguro_desemprego=" O colaborador não terá direito ao seguro desemprego \n"
								}
							pare
							caso 2:
								se(tempo_trabalhado >= segunda_solicitacao)
								{
									seguro_desemprego="O colaborador tem direito ao seguro desemprego \n"
									se(tempo_trabalhado >= segunda_solicitacao e tempo_trabalhado > numero_tres_parcelas)
									{
										seguro_desemprego=" O colaborador tem direito 5 parcelas"
									}
									senao se (tempo_trabalhado >= primeira_solicitacao e tempo_trabalhado > numero_quatro_parcelas)
									{
										seguro_desemprego=" O colaborador tem direito 4 parcelas"
									}
									senao
									{
										seguro_desemprego=" O colaborador tem direito 3 parcelas"
									}
								}
								senao
								{
									seguro_desemprego="O colaborador não terá direito ao seguro desemprego \n"
								}
							pare
							caso 3:
								se(tempo_trabalhado > terceira_solicitacao)
								{
									seguro_desemprego=" O colaborador tem direito ao seguro desemprego \n"
									se(tempo_trabalhado >= mumero_cinco_parcelas)
									{
										seguro_desemprego=" O colaborador tem direito 5 parcelas"
									}
									senao se (tempo_trabalhado >= primeira_solicitacao e tempo_trabalhado < numero_tres_parcelas)
									{
										seguro_desemprego=" O colaborador tem direito 4 parcelas"
									}
									senao
									{
										seguro_desemprego=" O colaborador tem direito 3 parcelas"
									}
								}
								senao
								{
									seguro_desemprego=" O colaborador não terá direito ao seguro desemprego \n"
								}
							pare

							caso contrario:
								seguro_desemprego=" não tem direito ao seguro desemprego"
						}
					}
					senao
					{
						seguro_desemprego=" não tem direito ao seguro desemprego"
					}
				}
				senao
				{
					seguro_desemprego=" não tem direito ao seguro desemprego"
				}
			}
			senao
			{
				seguro_desemprego=" não tem direito ao seguro desemprego"
			}
		}
		senao
		{
			seguro_desemprego=" não tem direito ao seguro desemprego"
		}
		retorne seguro_desemprego
	}
	funcao tela_seguro_desemprego()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ VERIFICADOR DE SEGURO DESEMPREGO                       ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		cadeia seguro_desemprego=verificador_de_seguro_desemprego()
		
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║  ",seguro_desemprego,"                 ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_seguro_desemprego()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	
	// VERIFICADOR DE VALE TRANSPORTE

	
	funcao cadeia verificador_de_vale_transporte(real salario_p)
	{
		const real porcentagem = 0.06
		const inteiro quantidade_trabalhada = 20
		real salario=salario_p, quantidade_vt_dia, calculo_vt, gasto_mensal, valor_vt
		cadeia valor_vt_cadeia
		cadeia resposta_colaborador
		cadeia vale_transporte 
		real passa_valor,juntar_valor 

		escreva("║ O colaborador utiliza meio de transporte público coletivo?(s)SIM/(n)NÃO:\n║ ")
		leia(resposta_colaborador)
		
		resposta_colaborador = Texto.caixa_baixa(resposta_colaborador)
		se(Texto.caixa_baixa(resposta_colaborador) == "s")
		{
			escreva("\n║ O colaborador tem direito ao vale transporte\n")
			escreva("\n║ Informe a quantidade de vales necessários por dia: ")
			leia(quantidade_vt_dia)

			escreva("║ Informe o valor da passagem: ")
			leia(valor_vt_cadeia)
			valor_vt= convertor_de_cadeia_para_real(valor_vt_cadeia)
			calculo_vt = salario * porcentagem
			
			escreva("║ Será descontado R$", calculo_vt, " do colaborador", "\n")

			escreva("\n║ Gostaria que o sistema vericasse se vale a pena utilizar o vale transporte?(s)SIM/(n)NÃO:\n║ ")
			leia(resposta_colaborador)
			
			resposta_colaborador = Texto.caixa_baixa(resposta_colaborador)
			se(Texto.caixa_baixa(resposta_colaborador) == "s")
			{
				gasto_mensal = quantidade_vt_dia *valor_vt * quantidade_trabalhada
				se(gasto_mensal > calculo_vt)
				{
					vale_transporte="Vale a pena utilizar o vale transporte"
					
				}
				senao 
				{
					vale_transporte="Não vale a pena utilizar o vale transporte"
					
				}
			}	
			senao
			{	
			vale_transporte="Obrigado pela compreensão, volte sempre"
			}

		}
		senao
		{
			vale_transporte=" O colaborador não tem direito ao vale transporte"
		}
		retorne vale_transporte					
	}
	funcao tela_vale_transporte()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ VERIFICADOR DE VALE TRANSPORTE                         ║\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		cadeia vale_transporte=verificador_de_vale_transporte(salario_oficial)
		
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║  ",vale_transporte,"                ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_vale_transporte()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	funcao real segunda_tela_vale_transporte(real salario_p)
	{
		real salario=salario_p
		caracter resposta_do_usuario
		cadeia resposta_em_cadeia
		real vale_transporte=0
		const real porcentagem_para_calculo=0.06
		
		escreva("║ NA SUA EMPRESA VOCÊ TEM O DIREITO VALE TRANSPOTE?(s)SIM/(n)NÃO: \n║ ")
		leia(resposta_em_cadeia)
		resposta_em_cadeia= t.caixa_baixa(resposta_em_cadeia)
		resposta_do_usuario= ti.cadeia_para_caracter(resposta_em_cadeia)
		
		escolha(resposta_do_usuario)
		{
			caso 's':
				vale_transporte= salario*porcentagem_para_calculo
			pare
			caso 'n':
				vale_transporte=0
			pare
			caso contrario:
			 escreva("║ POR FAVOR DIGITE UMA RESPOSTA CORRETA\n")
			 
			
		}
		retorne vale_transporte
	}
	
	//VERIFICADOR CALCULADOR DE PIS
	
	funcao real calculador_e_verificador_de_piss(real salario_p)
	{
		real salario = salario_p
		inteiro tempo_pis, tempo_trabalhados, meses_trabalhados, anos_trabalhados
		real valor_pis
		
		escreva("║ Você está cadastrado no PIS há quanto tempo? ")
		leia(tempo_pis)

		escreva("║ Você tem quantos anos de empresa? ")
		leia(anos_trabalhados)
		
		meses_trabalhados =  anos_trabalhados * 12

		valor_pis = salario /12 * meses_trabalhados
		
		//quantidade de anos
		se( tempo_pis < 5)
		{
			escreva("║ Você não tem direito de isufruir do programa PIS \n")
		}
		senao
		{
			escreva("║ Você tem direito ao programa PIS, vamos fazer o cálculo do seu PIS")
		}

		valor_pis = m.arredondar(valor_pis, 3)
		escreva("\n║ Já que você tem direito ao PIS, você irá receber R$", valor_pis)
		retorne valor_pis
	}
	funcao tela_pis()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ VERIFICADOR DE VALE TRANSPORTE                         ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real valor_pis=calculador_e_verificador_de_piss(salario_oficial)
		se(valor_pis!=0 )
		{
			
			limpa()
			escreva("╔════════════════════════════════════════════════════════╗\n")
			escreva("║         COMO VOCÊ TEM DIREITO AO PIS O VALOR É         ║\n")
			escreva("║                   ",valor_pis,"                             ║\n")
			escreva("╚════════════════════════════════════════════════════════╝\n")
		}
		senao
		{
			escreva("╔════════════════════════════════════════════════════════╗\n")
			escreva("║         COMO VOCÊ TEM DIREITO AO PIS O VALOR É         ║\n")
			escreva("║                     ",valor_pis,"                     ║\n")
			escreva("╚════════════════════════════════════════════════════════╝\n")
		}
		se(volta_ao_menu())
		{
			
			tela_pis()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				inicio()
			}	
		}	
	}
	
	//CALCULADOR DE ADICIONAL NOTURNO
	
	funcao real calculador_de_adicional_noturno(real salario_p)
	{
		real salario = salario_p
		real horas_mensais, horas_noturna, valor_hora, valor_hora_trabalhada, valor_adcional

		escreva("║ Informe quantas horas voce trabalha mensalmente: \n║")
		leia(horas_mensais)

		escreva("║ Informe quantas horas noturna a mais trabalhou: \n║ ")
		leia(horas_noturna)

		valor_hora = salario /horas_mensais

		valor_hora_trabalhada = valor_hora * 20/100

		valor_adcional = horas_noturna * valor_hora_trabalhada

		retorne valor_adcional 

	}
	funcao tela_adicional_noturno()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE ADICIONAL NOTURNO                       ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real adicional_noturno=calculador_de_adicional_noturno(salario_oficial)
		limpa()
		adicional_noturno= m.arredondar(adicional_noturno, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║            O VALOR DO SEU ADICIONAL NOTURNO É          ║\n")
		escreva("║                          ",adicional_noturno+salario_oficial,"                       ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_adicional_noturno()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	funcao real segunda_tela_add_noturno(real salario_p,real carga_horaria_p)
	{
		real salario = salario_p
		real horas_mensais=carga_horaria_p, horas_noturna, valor_hora, valor_hora_trabalhada, valor_adcional

		escreva("║ Informe quantas horas noturna a mais trabalhou: \n║ ")
		leia(horas_noturna)

		valor_hora = salario /horas_mensais

		valor_hora_trabalhada = valor_hora * 20/100

		valor_adcional = horas_noturna * valor_hora_trabalhada

		retorne valor_adcional 

	}
	
	//CALCULADOR DE PERICULOSIDADE
	
	funcao real calculador_de_periculosidade(real salario_p)
	{
		real salario=salario_p
		real add_de_periculosidade
		add_de_periculosidade=0.3*salario
		retorne add_de_periculosidade
	}
	funcao tela_periculosidade()
	{
		
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA DE PERICULOSIDADE                          ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real periculosidade=calculador_de_periculosidade(salario_oficial)
		limpa()
		periculosidade= m.arredondar(periculosidade, 2)
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║              SUA PERICULOSIDADE É IGUAL A:             ║\n")
		escreva("║                         ",periculosidade,"                          ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_periculosidade()
		}	
		senao 
		{
			
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	funcao real segunda_tela_periculosidade(real salario_p)
	{
		real salario=salario_p
		caracter resposta_do_usuario
		cadeia resposta_em_cadeia
		real periculosidade=0
		escreva("║ NA SUA EMPRESA VOCÊ TEM O ADICIONAL DE PERICULOSIDADE?(s)SIM/(n)NÃO: \n║ ")
		leia(resposta_em_cadeia)
		resposta_em_cadeia= t.caixa_baixa(resposta_em_cadeia)
		resposta_do_usuario= ti.cadeia_para_caracter(resposta_em_cadeia)
		
		escolha(resposta_do_usuario)
		{
			caso 's':
				periculosidade= calculador_de_periculosidade(salario)
			pare
			caso 'n':
				periculosidade=0
			pare
			caso contrario:
			 escreva("║ POR FAVOR DIGITE UMA RESPOSTA CORRETA\n")
			 
			
		}
		retorne periculosidade
	}
	// CALCULADOR HORA EXTRA
	
	funcao real calculador_de_hora_extra(real salario_p)
	{
		const real taxa_hora_extra100 = 2, taxa_hora_extra50 = 0.5
		real valor_hora100 = 0, valor_hora_extra100 = 0, valor_total_extra100 = 0, valor_hora50 = 0, valor_hora_extra50 = 0, valor_total_extra50 = 0, soma_extra100 = 0, soma_extra50 = 0, valor_bruto = 0
		real salario_base, carga_horaria, hora_extra_uteis, hora__feriado_domingo
		cadeia trabalho_feriado_domingo, dias_uteis
		salario_base=salario_p

		escreva("║ Informe a carga horária mensal do colaborador de acordo com o contrato de trablaho do mes: \n║ ")
		leia(carga_horaria)


		escreva("║ O colaborador relizou trabalho em domingos e feriados?(s)SIM/(n)NÃO:\n║ ")
		leia(trabalho_feriado_domingo)
		t.caixa_baixa(trabalho_feriado_domingo)
		se(t.caixa_baixa(trabalho_feriado_domingo) == "s")
		{
			escreva("║ O colaborador relizou trabalho em dias úteis?(s)SIM/(n)NÃO:\n║ ")
			leia(dias_uteis)

			t.caixa_baixa(dias_uteis)
			se(t.caixa_baixa(dias_uteis) == "s")
			{	
				
				escreva("║ Informe as horas extras trabalhadas em dias uteis:\n║ ")
				leia(hora_extra_uteis)

				escreva("║ Informe as horas extras trabalhadas em domingos e feriados:\n║ ")
				leia(hora__feriado_domingo)

				// hora extra 100%
				valor_hora100 = salario_base / carga_horaria
				valor_hora_extra100 = valor_hora100 * taxa_hora_extra100
				valor_total_extra100 = valor_hora_extra100 * hora__feriado_domingo
				soma_extra100 = valor_total_extra100

				// hora extra 50%
				valor_hora50 = salario_base / carga_horaria
				valor_hora_extra50 = valor_hora50 * taxa_hora_extra50
				valor_total_extra50 = valor_hora_extra50 * hora_extra_uteis
				soma_extra50 = valor_total_extra50 + valor_total_extra100

				valor_bruto = soma_extra50 + soma_extra100 + salario_base
				valor_bruto = m.arredondar(valor_bruto, 2)
				
				
			}
			senao
			{
				escreva("║ Informe as horas extras trabalhadas em domingos e feriados:\n║ ")
				leia(hora__feriado_domingo)
				
				valor_hora100 = salario_base / carga_horaria
				valor_hora_extra100 = valor_hora100 * taxa_hora_extra100
				valor_total_extra100 = valor_hora_extra100 * hora__feriado_domingo
				soma_extra100 = valor_total_extra100
				valor_bruto = soma_extra100 + salario_base
				valor_bruto = m.arredondar(valor_bruto, 2)
				
				
			}
		}
		senao
		{
				escreva("║ Informe as horas extras trabalhadas em dias uteis: \n║")
				leia(hora_extra_uteis)	

				valor_hora50 = salario_base / carga_horaria
				valor_hora_extra50 = valor_hora50 * taxa_hora_extra50
				valor_total_extra50 = valor_hora_extra50 * hora_extra_uteis
				soma_extra50 = valor_total_extra50
				valor_bruto = soma_extra50 + salario_base
				valor_bruto = m.arredondar(valor_bruto, 2)
		}		
		retorne valor_bruto
	}
	funcao tela_hora_extra()
	{
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║ CALCULADORA SALARIO DE HORA EXTRA                          ║\n")
		escreva("╠════════════════════════════════════════════════════════╝\n")
		escreva("║ DIGITE SEU SALÁRIO:\n")
		escreva("║ R$ ")
		cadeia salario_cadeia
		leia(salario_cadeia)
		real salario_oficial= convertor_de_cadeia_para_real(salario_cadeia)
		real hora_extra=calculador_de_hora_extra(salario_oficial)
		hora_extra= m.arredondar(hora_extra, 2)
		limpa()
		escreva("╔════════════════════════════════════════════════════════╗\n")
		escreva("║           O VALOR TOTAL DA SUAS HORAS EXTRAS :         ║\n")
		escreva("║                        ",hora_extra,"                          ║\n")
		escreva("╚════════════════════════════════════════════════════════╝\n")
		se(volta_ao_menu())
		{
			
			tela_hora_extra()
		}	
		senao 
		{
			se(finalizar_programa())
			{
				 final()
			}	
			senao 
			{
				
				inicio()
			}	
		}	
	}
	funcao real segunda_tela_hora_extra(real salario_p,real carga_horaria_p)
	{
		const real taxa_hora_extra100 = 2, taxa_hora_extra50 = 0.5
		real  valor_hora50 = 0, valor_hora_extra50 = 0, valor_total_extra50 = 0, soma_extra50 = 0, valor_bruto = 0
		real salario_base, carga_horaria=carga_horaria_p, hora_extra_uteis
		cadeia trabalho_feriado_domingo, dias_uteis
		salario_base=salario_p


				escreva("║ Informe as horas extras trabalhadas:\n║ ")
				leia(hora_extra_uteis)
				// hora extra 50%
				valor_hora50 = salario_base / carga_horaria
				valor_hora_extra50 = valor_hora50 * taxa_hora_extra50
				valor_total_extra50 = valor_hora_extra50 * hora_extra_uteis
				soma_extra50 = valor_total_extra50

				valor_bruto = soma_extra50 
				valor_bruto = m.arredondar(valor_bruto, 2)
				
				
				
				
	
		retorne valor_bruto	
			
	}
	//=================================================================================================================================================
	// FUNCÕES ADICIONAIS
	//=================================================================================================================================================
	funcao real convertor_de_cadeia_para_real(cadeia salario_cadeia_p)
	{
		cadeia salario_cadeia=salario_cadeia_p
		real salario_real
		salario_cadeia=t.substituir(salario_cadeia, ",", ".")
		salario_real= ti.cadeia_para_real(salario_cadeia)
		retorne salario_real
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
	funcao logico finalizar_programa()
	{
		caracter s_ou_n
		logico sair
		
		faca{
			
			escreva("\nDeseja mostra o detalhamento e finalizar o programa?\n(s)SIM/(n)NÃO: \n")
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
	funcao concertar_programas()
	{
		
	}
	funcao banco_de_dados()
	{
		cadeia fazer_ou_nao_outro_cadastro
		cadeia nome_completo, telefone, email, idade, cep, endereco_sem_cep, endereco
		inteiro n = 1, numero_caracteres 
		const cadeia NOME = "NOME COMPLETO: "
		const cadeia TEL = "TELEFONE: "
		const cadeia EMAIL = "EMAIL: "
		const cadeia IDA = "IDADE: "

		faca
		{
				escreva("Infome seu nome completo: ")
				leia(nome_completo)
				nome_completo = t.caixa_alta(nome_completo)
		
				escreva("Informe seu telefone: ")
				leia(telefone)
				telefone = t.caixa_alta(telefone)
		
				escreva("Informe seu email: ")
				leia(email)
				email = t.caixa_alta(email)
		
				escreva("Informe sua idade: ")
				leia(idade)
				idade = t.caixa_alta(idade)
		
				escreva("Digite seu CEP: \n")
				leia(cep)
				escreva("---------------------\n")
				
				endereco = WS.obter_dados("https://viacep.com.br/ws/"+ cep + "/json/")
				numero_caracteres = Texto.numero_caracteres(endereco)
				
				endereco_sem_cep = Texto.extrair_subtexto(endereco, 22, numero_caracteres)
		
				endereco_sem_cep = Texto.substituir(endereco_sem_cep, ",","\n")
				escreva(endereco_sem_cep)
		
				logico arquivo_existe = a.arquivo_existe("./banco de dados.txt")
				se(arquivo_existe)
				{
					
					inteiro arquivo = a.abrir_arquivo("./banco de dados.txt", a.MODO_ACRESCENTAR)
					a.escrever_linha("\n", arquivo)
					a.escrever_linha("FUNCIONÁRIO "+  n + "\n", arquivo)
					n++
					a.escrever_linha("\n", arquivo)
					a.escrever_linha(NOME+ nome_completo, arquivo)
					a.escrever_linha(TEL+ telefone, arquivo)
					a.escrever_linha(EMAIL+ email, arquivo)
					a.escrever_linha(IDA+ idade, arquivo)
		
				a.fechar_arquivo(arquivo)
				}
				senao 
				{
					inteiro arquivo = a.abrir_arquivo("./banco de dados.txt", a.MODO_ESCRITA)
					a.escrever_linha("\n", arquivo)
					a.escrever_linha("FUNCIONÁRIO "+  n + "\n", arquivo)
					n++
					a.escrever_linha("\n", arquivo)
					a.escrever_linha(NOME+ nome_completo, arquivo)
					a.escrever_linha(TEL+ telefone, arquivo)
					a.escrever_linha(EMAIL+ email, arquivo)
					a.escrever_linha(IDA+ idade, arquivo)
		
				a.fechar_arquivo(arquivo)
				}
				
				
				escreva("DESEJA FAZER OUTRO CADASTRO") 
				leia(fazer_ou_nao_outro_cadastro)
				se(fazer_ou_nao_outro_cadastro=="n" ou fazer_ou_nao_outro_cadastro=="s")
				{
					fazer_ou_nao_outro_cadastro = t.caixa_alta(fazer_ou_nao_outro_cadastro)
				}
				}enquanto(fazer_ou_nao_outro_cadastro=="S")
	}
}
