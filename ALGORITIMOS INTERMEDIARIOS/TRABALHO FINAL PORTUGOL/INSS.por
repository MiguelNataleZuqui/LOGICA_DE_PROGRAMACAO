programa
{
	real salario
	funcao inicio()
	{
		const real SALARIO_LIMITE1=1302.01,SALARIO_LIMITE2=2571.30,SALARIO_LIMITE3=3856.95
		const real ALIQUOTA1=7.5, ALIQUOTA2=9.0, ALIQUOTA3=12.0, ALIQUOTA4=14.0
		const real VALOR_A_DEDUZIR=1302.0,VALOR_A_DEDUZIR2=2571.29,VALOR_A_DEDUZIR3=3856.94,TETO_DO_INSS=7507.49
		real valor_do_inss[4]
		real valor_do_inss_oficial=0
		escreva("digite seu salario: ")
		leia(salario)
		se(salario<SALARIO_LIMITE1)
		{
			valor_do_inss[0]=salario*(ALIQUOTA1/100)
			para(inteiro i=0;i<=4;i++)
			{
				valor_do_inss_oficial=valor_do_inss_oficial+valor_do_inss[i]
			}
		}
		senao se(salario<SALARIO_LIMITE2)
		{
			valor_do_inss[0]=(VALOR_A_DEDUZIR)*(ALIQUOTA1/100)
			valor_do_inss[1]=(salario-VALOR_A_DEDUZIR)*(ALIQUOTA2/100)
			para(inteiro i=0;i<=4;i++)
			{
				valor_do_inss_oficial=valor_do_inss_oficial+valor_do_inss[i]
			}
			
		}
		senao se(salario<SALARIO_LIMITE3)
		{
			valor_do_inss[0]=(VALOR_A_DEDUZIR)*(ALIQUOTA1/100)
			valor_do_inss[1]=(VALOR_A_DEDUZIR2-VALOR_A_DEDUZIR)*(ALIQUOTA2/100)
			valor_do_inss[2]=(salario-VALOR_A_DEDUZIR2)*(ALIQUOTA3/100)
			para(inteiro i=0;i<=4;i++)
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor_do_inss, 9, 7, 13}-{valor_do_inss_oficial, 10, 7, 21};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */