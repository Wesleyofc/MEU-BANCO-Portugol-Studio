programa
{
	
	funcao inicio()
	{

     // Ao criar conta corrente, obrigatório perguntar se deseja 
     //realizar deposito inicial e criar automaticamente conta poupança;

     //DADOS DA CONTA CORRENTE
	//As contas precisam ter: nome titular, agência, número da conta e dígito verificador;

	inteiro agenciaCorr=2006, numConCorr = 0,cVeriCorr=206 
	real saldoCorr=0.0, saqueCorr, depCorr

 	//DADOS DA CONTA POUPANÇA
	//As contas precisam ter: nome titular, agência, número da conta e dígito verificador;
	inteiro agenciaPou=2006, cVeriPou=207
	real saldoPou=0.0,resgPou,apliPou
	
	
     logico dura=falso
     inteiro opcao
     cadeia nome
     faca{
     
	escreva("========================\n") 
	escreva("|| BANCO DOS OTÁRIOS ||\n")
     escreva("========================\n")        

     //ENTRADA PARA OPCAO
     escreva("\nDIGITE UMA DAS OPÇÕES ABAIXO:\n")
     escreva("1 - Criar Conta\n")
	leia(opcao)

     //1º ESCOLHA PARA A PRIMEIRA ENTRADA
	escolha(opcao){

	caso 1: 

	//RECEBENDO DADOS DO USARIO PARA CRIAR A CONTA
	
	escreva("Qual seu nome:")
	leia(nome)
     escreva("Qual o número da conta que você deseja ter:")
	leia(numConCorr)

	escreva("\nCONTA CRIADA COM SUCESSO!\n")

 	//DEPÓSITO INICIAL

	inteiro depInCorr, opIn
  	logico dura2=falso
  	faca{
     escreva("Você deseja fazer algum depósito inicial na sua conta corrente?\n")
     escreva("1 - Sim\n")
	escreva("2 - Não\n")
     leia(opIn)

	se(opIn==1){

		escreva("Quanto você quer depositar?")
		leia(depInCorr)

		saldoCorr=depInCorr+saldoCorr
		
		escreva("\nDEPÓSITO CONCLUIDO COM SUCESSO!\n")
		dura2=verdadeiro
		dura=verdadeiro
	}
	
     senao se(opIn==2){
     	dura=verdadeiro
     	dura2=verdadeiro
     	}
     
  	senao{
  		escreva("\nDigito incorreto, favor digitar um digite corrrespondente!\n\n")
  		
  		}
  	
  	}
     enquanto(dura2==falso)



	
	pare
	caso contrario: 
	
	escreva("\nDigito incorreto, favor digitar um digite corrrespondente!\n\n")
	pare
		}
     }
     enquanto(dura==falso)
     
	// Operações na CC: saque, depósito e exibir conta;
     // Operações na CP: Aplicar na poupança, resgate e exibir conta;
     
	logico dura3=falso
	inteiro opc3,opc4,opc5
     faca{

     
	escreva("========================\n") 
	escreva("|| BANCO DOS OTÁRIOS ||\n")
     escreva("========================\n") 
     
	escreva("\nDIGITE UMA DAS OPÇÕES ABAIXO:\n")
     escreva("1 - Operações conta Corrente\n")
	escreva("2 - Operações conta Poupança\n")
	escreva("3 - Sair\n")
	leia(opc3)
	logico dura4=falso
	faca{
	escolha(opc3)
	{

     //TUDO DA CONTA CORRENTE
	caso 1:

	// Operações na CC: saque, depósito e exibir conta;
	
	escreva("========================\n") 
	escreva("|| BANCO DOS OTÁRIOS ||\n")
     escreva("========================\n") 
	escreva("   CONTA CORRENTE:\n")
	escreva("\nNÚMERO DA AGÊNCIA:" + agenciaCorr)
	escreva("\nNÚMERO DA CONTA:" + numConCorr)
	escreva("\nCÓDIGO VERIFICADOR:" + cVeriCorr)
	escreva("\nSALDO DA CONTA:" + saldoCorr)
     
	escreva("\n\nQUAL DAS OPÇÕES VOCÊ DESEJA EXECUTAR:\n")
	escreva("1 - Saque\n")
	escreva("2 - Depósito\n")
	escreva("3 - Sair\n")
	leia(opc4)

	//"SE" DO SAQUE
	se(opc4==1){
		
		escreva("\nQuanto você deseja sacar?\n\n")
		leia(saqueCorr)

		//COMPARANDO SE O SAQUE VAI DE ACORDO COMO O SALDO
		se(saqueCorr<=saldoCorr){

		saldoCorr = saldoCorr - saqueCorr
          
		escreva("SAQUE REALIZADO COM SUCESSO!\n")
		
		dura4=verdadeiro	
			
			
		}

		senao se(saqueCorr>saldoCorr){
			
			escreva("SEU SALDO É INSUFICIENTE! FAVOR TENTE NOVAMENTE UM OUTRO VALOR!\n\n")
			dura4=verdadeiro
			}
		}
		
	senao se(opc4==2){
		
		escreva("Quanto você quer depositar?")
		leia(depCorr)

		saldoCorr = saldoCorr + depCorr

		escreva("\nDEPÓSITO REALIZADO COM SUCESSO!\n")
		dura4=verdadeiro
		}
	senao se (opc4==3){
		
		dura4=verdadeiro
		}
	//FIM DAS OPERAÇÕES NA CONTA CORRENTE
	
	pare
	caso 2: 

	// Operações na CP: Aplicar na poupança, resgate e exibir conta;
	//inteiro agenciaPou=2007, numConPou=20072007, cVeriPou=207, saldoPou=0
	inteiro numConPou = numConCorr
	escreva("========================\n") 
	escreva("|| BANCO DOS OTÁRIOS ||\n")
     escreva("========================\n") 
	escreva("   CONTA POUPANÇA:\n")
	escreva("\nNÚMERO DA AGÊNCIA:" + agenciaPou)
	escreva("\nNÚMERO DA CONTA:" + numConPou)
	escreva("\nCÓDIGO VERIFICADOR:" + cVeriPou)
	escreva("\nSALDO DA CONTA:" + saldoPou)
     
	escreva("\n\nQUAL DAS OPÇÕES VOCÊ DESEJA EXECUTAR:\n")
	escreva("1 - Resgate para a conta corrente\n")
	escreva("2 - Aplicar na poupança\n")
	escreva("3 - Sair\n")
	leia(opc5)

	se(opc5==1){
		
	escreva("\nQUANTO VOCÊ DESEJA RESGATAR PARA A CONTA CORRENTE?")
	leia(resgPou)

		//VERIFICANDO SE O RESGATE VAI DE ACORDO AO SALDO DA CONTA POUPANÇA
		se(resgPou<=saldoPou){
			
			saldoPou = saldoPou - resgPou
			saldoCorr = saldoCorr + resgPou

			escreva("\nRESGATE PARA A CONTA CORRENTE FEITO COM SUCESSO!\n!")

			dura4=verdadeiro
			
			}
		senao se(resgPou>saldoPou){
			
			escreva("\nSEU SALDO É INSUFICINTE PARA O RESGATE! FAVOR TENTAR NOVAMENTE COM OUTRO VALOR!\n")
			dura4=verdadeiro
			}

		}
		
	senao se(opc5==2){
		
		escreva("\nQUANTO VOCÊ DESEJA APLICAR NA CONTA POUPANÇA?")
		leia(apliPou)

			se(apliPou<=saldoCorr){
				
				saldoCorr = saldoCorr - apliPou
				saldoPou = saldoPou + apliPou

				escreva("\nDINHEIRO APLICADO NA CONTA POUPANÇA COM SUCESSO!\n")
				dura4=verdadeiro
				}

			senao se(apliPou>saldoCorr){
				
				escreva("\nVOCÊ NÃO TEM SALDO SUFICIENTE NA CONTA CORRRENTE PARA FAZER APLICAÇÃO NA CONTA POUPANÇA, POR FAVOR TENTE OUTRO VALOR\n")
				
				}
	
		}
	senao se(opc5==3){

			dura4=verdadeiro
		
	}
	
	pare
	caso 3: 
	
	dura3=verdadeiro
	dura4=verdadeiro
	
	pare
	caso contrario:
	escreva("\nFAVOR DIGITE UM NÚMERO CORRETO:")
	dura4=verdadeiro
	pare
	}
	
     }
	enquanto(dura4==falso)
     }
     enquanto(dura3==falso)








		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */