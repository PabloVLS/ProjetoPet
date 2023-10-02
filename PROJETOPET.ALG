Algoritmo "PetGilso"
// Disciplina   : [Projeto Pet]
// Professor   : Gilberto

Var
   nomePet,nomeJogador:caractere
   comecar:inteiro
   opcao, desligar:inteiro
   tempoVida, felicidade, limpeza , fome, doente, idade:inteiro

   chanceCura, doencaChance, tempoDoente:inteiro
   doenca:logico

   jogadaPet , jogadaDono:inteiro
   empate, vitoriaDono, vitoriaPet:inteiro


Inicio
   escrevaL("          Seja Bem Vindo ao Mundo YourPet")
   escreval
   escreval
   escreval("Digite 1 para começar:")
   leia(comecar)
   limpatela
   enquanto (comecar <> 1) faca
      escreval("Digite 1 para começar:")
   fimenquanto
   escreval
   escreval("Olá, qual é seu nome? <(^_^)> ")
   leia(nomeJogador)
   limpatela

   escreval("Muito Bem ",nomeJogador,". Para começar digite o nome do seu pet!")

   escreval("Nome do Pet:")
   leia(nomePet)
   limpatela

   tempoVida <- 0
   felicidade <- 5
   limpeza <- 10
   fome <- 0
   idade <- 0
   escreval("Essas são as atribuições do seu pet")
   escreval
   escreval("Fome:",fome)
   escreval("Felicidade",felicidade)
   escreval("Limpeza",limpeza)
   escreval("Fome",fome)
   escreval("Idade",idade)
   escreval




   enquanto (idade<7)e(felicidade > 0)e(fome < 10)e(limpeza>0)e(desligar=0) faca

      doencaChance <- randi(31)
      se(doenca = falso) entao
         se(doencaChance = 15) entao
            doenca <- verdadeiro
            chanceCura <- randi(101)
            escreval
         fimse
      fimse
      se (doenca = verdadeiro) entao
         escreval(nomePet," ESTA DOENTINHO")
         escreval("A chance de cura e de ",chanceCura)
      fimse

      escreval("Projeto Virtual Pet 2023 ")
      escreval("<(^_^)>    (•_•)    _(x.x)_  ")
      escreval("Escolha uma opção a seguir: ")
      escreval("1.	Avançar o tempo ")
      escreval("2.	Alimentar   ")
      escreval("3.	Jogar     ")
      escreval("4.	Dar banho ")
      escreval("5.	Ver status")
      escreval("6.	Desligar ")

      leia(opcao)
      limpatela
      escolha(opcao)
      caso 1
         tempoVida <- tempoVida + 8
         se(doenca = verdadeiro) entao
            tempoDoente <- tempoDoente + 8
            se(tempoDoente = 8) entao
               se(chanceCura < 33.3) entao
                  doenca <- falso
                  escreval("A gripe foi curada! depois de 8 horas")
                  tempoDoente <- 0
                  escreval
               fimse
            fimse
            se(tempoDoente = 16) entao
               se(chanceCura < 66.6) entao
                  doenca <- falso
                  escreval("A gripe foi curada! depois de 16 horas")
                  tempoDoente <- 0
                  escreval
               fimse
            fimse
            se(tempoDoente > 16) entao
               doenca <- falso
               escreval("A gripe foi curada! depos de 24 horas")
               tempoDoente <- 0
               escreval
            fimse
         fimse




         fome <- fome + 3
         felicidade <- felicidade - 2
         limpeza <- limpeza - 2

         se (tempoVida = 24) entao
            tempoVida <- 0
            idade <- idade + 1
            escreval("A idade de ",nomePet," agora é",idade)
         fimse

         escreval("Horas do dia:",tempoVida,"Hrs")
         escreval("A idade de ",nomePet, " agora é ",idade)
         escreval


      caso 2
         se (fome = 0) entao
            escreval("O ",nomePet, "ficou triste em querer comer contra sua vontade")
            felicidade <- felicidade - 2
            escreval
            escreval
         senao

            escreval("HUMMMMMMM que gostoso, ",nomePet," acabou de comer")
            fome <- fome - 4
         fimse
         se (fome < 0) entao
            fome <- 0
         fimse

      caso 3
         limpatela
         escreval("     Pedra      x       Papel        x         Tesoura")
         escreval
         escreval
         escreval("Digite 0 para pedra!")
         escreval
         escreval("Digite 1 para papel!")
         escreval
         escreval("Digite 2 para tesoura!")
         //0 e pedra
         //1 e papel
         //2 e tesoira

         leia(jogadaDono)
         jogadaPet <- randi(3)
         se (jogadaDono=0) e (jogadaPet=2) entao
            limpatela
            escreval("Pedra X Tesoura")
            escreval(nomeJogador," Ganhou")
            vitoriaDono <- vitoriaDono +1
            felicidade <- felicidade + 3
            escreval
            escreval
            escreval
         senao
            se (jogadaDono=0) e (jogadaPet=1) entao
               limpatela
               escreval("Pedra X Papel")
               escreval(nomeJogador," Ganhou")
               vitoriaPet <- vitoriaPet +1
               felicidade <- felicidade + 5
               escreval
               escreval
               escreval
            senao
               se (jogadaDono=2) e (jogadaPet=0) entao
                  limpatela
                  escreval("Tesoura X Pedra")
                  escreval(nomePet," Ganhou")
                  vitoriaPet <- vitoriaPet +1
                  felicidade <- felicidade + 5
                  escreval
                  escreval
                  escreval
               senao
                  se (jogadaDono=2) e (jogadaPet=1) entao
                     limpatela
                     escreval("Tesoura X Papel")
                     escreval(nomeJogador," Ganhou")
                     vitoriaDono <- vitoriaDono +1
                     felicidade <- felicidade + 3
                     escreval
                     escreval
                     escreval
                  senao
                     se (jogadaDono=1) e  (jogadaPet=0) entao
                        limpatela
                        escreval("Papel X Pedra")
                        escreval(nomeJogador," Ganhou")
                        vitoriaDono <- vitoriaDono +1
                        felicidade <- felicidade + 3
                        escreval
                        escreval
                        escreval
                     senao
                        se (jogadaDono=1) e  (jogadaPet=2) entao
                           limpatela
                           escreval("Papel X Tesoura")
                           escreval(nomePet," Ganhou")
                           vitoriaPet <- vitoriaPet +1
                           felicidade <- felicidade + 5
                           escreval
                           escreval
                           escreval
                        senao
                           limpatela
                           escreval("Resultado deu Empate")
                           empate <- empate +1
                           escreval
                           escreval
                           escreval
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse


      caso 4
         se (limpeza = 10) entao
            escreval("O ",nomePet, "ja estava limpo, agora ficou triste!")
            felicidade <- felicidade - 6
            escreval
            escreval
         senao
            escreval("O ",nomePet," está limpo!")
            limpeza <- 10
         fimse

      caso 5
         escreval("Fome:",fome)
         escreval("Felicidade",felicidade)
         escreval("Limpeza",limpeza)
         escreval("Fome",fome)
         escreval("Idade",idade)
         escreval
         escreval("Estátisticas do JOKEMPO")
         escreval("Vitórias de ",nomeJogador," é:",vitoriaDono)
         escreval("Vitórias de ",nomePet," é:",vitoriaPet)
         escreval("Empate é:",empate)
         escreval
         escreval

      caso 6
         desligar <- 1
         escreval("Jogo YourPet foi encerrado")

      fimescolha
      se (fome > 10) entao
         escreval("O ",nomePet, " morreu de Fome !")
      senao
         se (felicidade < 0) entao
            escreval("O ",nomePet, " morreu de Tristeza !)
         senao
            se (limpeza  <  0)  entao
               escreval("O ",nomePet, " morreu de Sujeira !)
            senao
               se (idade > 7) entao
                  escreval("Morreu de velhice!")
                  escreval("Parabéns , Você Ganhou o jogo!")
               fimse
            fimse
         fimse
      fimse
   fimenquanto


Fimalgoritmo