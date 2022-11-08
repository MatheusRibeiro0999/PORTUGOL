programa
{
 funcao inicio()
 {
    var
    op:      inteiro
    num1:    real
    num2:    real
    soma:    real
    sub:     real
    mult:    real
    divi:    real
    perc:    real
    fat:     inteiro
    cont:    inteiro
    avancar: caractere

    procedimento Somar (var somando,n1,n2: real)
    inicio
    somando<- n1 + n2
    fimprocedimento

    procedimento Subtrair (var subtraindo,n1,n2: real)
    inicio
    subtraindo<- n1 - n2
    fimprocedimento

    procedimento Multiplicar (var multiplicando,n1,n2: real)
    inicio
    multiplicando<- n1 * n2
    fimprocedimento

    procedimento Dividir (var dividindo,n1,n2: real)
    inicio
    dividindo<- n1 / n2
    fimprocedimento

    procedimento Fatorial (var fator,n1,i: inteiro)
    inicio
    fator  <- 1
    i      <- 1
    repita
      se n1 >= i então
         i<- i + 1
          fator<- fator * i
       fimse
    ate i >= n1
    fimprocedimento

    procedimento Percentual (var percent,n1,n2:    real)
    inicio
    se n1 > n2 então
      percent<- (n2 * n1) / 100
    senao
      se n2 > n1 então
          percent<- (n1 * n2) / 100
       fimse
    fimse
    fimprocedimento

    inicio
    // Seção de Comandos
    repita
       escreval("-------------------------------------------")
       escreval("+                                         +")
       escreval("+               CALC SIMPLES              +")
       escreval("+                                         +")
       escreval("+                                         +")
       escreval("-------------------------------------------")
       escreval("            Escolha a Operação")
       escreval("-------------------------------------------")
       escreval("             1- Somar")
       escreval("             2- Subtrair")
       escreval("             3- Multiplicar")
       escreval("             4- Dividir")
       escreval("             5- Fatorial")
       escreval("             6- Percentual")
       escreval("             0- Sair do Sistema")
       escreval("-------------------------------------------")
       escreval("Informe a Operação")
       escreva(">> ")
      leia(op)

      escolha op
       
       caso 1
         escreval("-------------------------------------------")
         escreval("               S O M A                     ")
         escreval("-------------------------------------------")
         escreval("Informe um valor")
         escreva(">> ")
         leia(num1)

         escreval("Informe outro valor")
         escreva(">> ")
         leia(num2)
         Somar(soma,num1,num2)
         escreval("A soma é: ",Soma)
         escreval("-------------------------------------------")
         escreval("        Pressione Enter Para ")
         escreval("       Realizar um Novo Cálculo")
         escreval("    ou [ E ] Para Encerrar a calc")
         escreval("-------------------------------------------")
         escreva(">> ")
         leia(avancar)
         limpatela
      
      caso 2
          escreval("-------------------------------------------")
          escreval("              S U B T R A Ç Ã O ")
          escreval("-------------------------------------------")
          escreval("Informe um valor")
          escreva(">> ")
          leia(num1)

          escreval("Informe outro valor")
          escreva(">> ")
          leia(num2)
          Subtrair(sub,num1,num2)
          escreval("A subtração é: ",Sub)
          escreval("-------------------------------------------")
          escreval("        Pressione Enter Para ")
          escreval("       Realizar um Novo Cálculo")
          escreval("    ou [ E ] Para Encerrar a calc")
          escreval("-------------------------------------------")
          escreva(">> ")
          leia(avancar)
          limpatela
      
      caso 3
          escreval("-------------------------------------------")
          escreval("          M U L T I P L I C A Ç Ã O ")
          escreval("-------------------------------------------")
          escreval("Informe um valor")
          escreva(">> ")
          leia(num1)

          escreval("Informe outro valor")
          escreva(">> ")
          leia(num2)
          Multiplicar(mult,num1,num2)
          escreval("A multiplicação é: ",Mult)
          escreval("-------------------------------------------")
          escreval("        Pressione Enter Para ")
          escreval("       Realizar um Novo Cálculo")
          escreval("    ou [ E ] Para Encerrar a calc")
          escreval("-------------------------------------------")
          escreva(">> ")
          leia(avancar)
          limpatela
      
      caso 4
          escreval("-------------------------------------------")
          escreval("                D I V I S Ã O ")
          escreval("-------------------------------------------")
          escreval("Informe um valor")
          escreva(">> ")
          leia(num1)

          escreval("Informe outro valor")
          escreva(">> ")
          leia(num2)
          Dividir(Divi,num1,num2)
          escreval("A divisão é: ",Divi)
          escreval("-------------------------------------------")
          escreval("        Pressione Enter Para ")
          escreval("       Realizar um Novo Cálculo")
          escreval("    ou [ E ] Para Encerrar a calc")
          escreval("-------------------------------------------")
          escreva(">> ")
          leia(avancar)
          limpatela
      
      caso 5
          escreval("-------------------------------------------")
          escreval("               F A T O R I A L ")
          escreval("-------------------------------------------")
          escreval("Informe um valor")
          escreva(">> ")
          leia(num1)

          se num1 < 0 então
            repita
                escreval("Não é Permitido valores Negativos em Cálculo de Fatorial")
                escreval("         Informe Outro Valor")
                escreva(">> ")
                leia(num1)
            ate num1 >= 0
          fimse

          Fatorial(fat,num1,cont)
          escreval("O fatorial é: ",Fat)
          escreval("-------------------------------------------")
          escreval("        Pressione Enter Para ")
          escreval("       Realizar um Novo Cálculo")
          escreval("    ou [ E ] Para Encerrar a calc")
          escreval("-------------------------------------------")
          escreva(">> ")
          leia(avancar)
          limpatela
      
      caso 6
          escreval("-------------------------------------------")
          escreval("             P E R C E N T U A L ")
          escreval("-------------------------------------------")
          escreval("Informe um valor")
          escreva(">> ")
          leia(num1)

          escreval("Informe outro valor")
          escreva(">> ")
          leia(num2)
          Percentual(Perc,num1,num2)
          escreval("O percentual é: ",Perc,"%")
          escreval("-------------------------------------------")
          escreval("        Pressione Enter Para ")
          escreval("       Realizar um Novo Cálculo")
          escreval("    ou [ E ] Para Encerrar a calc")
          escreval("-------------------------------------------")
          escreva(">> ")
          leia(avancar)
         limpatela
      fimescolha

      se (op = 0) ou (avancar = "E") então
            limpatela
          escreval("-------------------------------------------")
          escreval("+                                         +")
          escreval("+                 DESLIGANDO              +")
          escreval("+                                         +")
          escreval("+                                         +")
          escreval("-------------------------------------------")
         
          interrompa
        fimse
      fimrepita
    fimalgoritmo
   }
}    
