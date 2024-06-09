saldo = 100
SAQUES_DIARIOS = 3
quantidade_de_saques = 0
valor_deposito = 0
valor_saque = 0
extrato = ""
menu = "n"
import sys
import time


def volta_menu():
        while True:
            repetir = input("Digite M para voltar ao menu ou Q para encerrar: ").upper()
            if repetir == "M":
                break
            elif repetir == "Q":
                print("Obrigado por utilizar os nossos serviços. Até logo!")
                sys.exit()
            else:
                print("Opção inválida. Favor escolher entre S para novo saque ou N para voltar ao menu inicial")
                continue

igual = "="*28
print(f"\n\n\tSEJA BEM-VINDO AO BANCO DIO\n\t{igual}")
print(extrato)
while True:
    menu = "n"
    print("""
          \tMENU INICIAL\n
        Selecione a opção desejada:

        [D] Depositar
        [S] Sacar
        [E] Extrato
        [Q] Sair
    """)
    opcao = (input("\tOpção: ")).upper()
    if opcao == "D":
        repetir = ""
        while True and menu == "n":
            print("\n\tDEPÓSITO")
            print(f"\n\tVocê possui um saldo de {saldo}. Qual o valor que deseja depositar?")
            valor_deposito = float(input("\tR$ "))
            saldo += valor_deposito
            extrato += f"\tDepósito: R$ {valor_deposito}\n"
            print("\n\tRealizado o depósito. Favor aguarde...")
            time.sleep(2)
            print(f"\n\tDepósito realizado no valor de {valor_deposito}.\n\n\tSaldo Atual: R$ {saldo}\n")
            while True:
                menu = "n"
                print("\tGostaria de realizar outro depósito?")
                repetir = input("\n\tDigite S para novo depósito ou M para voltar ao menu: ").upper()
                if repetir != "S" and repetir != "M":
                    print("\n\tOpção inválida. Favor escolher entre S para novo saque ou N para voltar ao menu inicial")
                    continue
                elif repetir == "S":
                    break
                elif repetir == "M":
                    menu = "s"
                    break
    elif opcao == "S":
        repetir = ""
        while True and menu == "n":
            print("\n\tSAQUE\n")
            print(f"\tVocê possui um saldo de {saldo}. Qual o valor que deseja sacar?")
            valor_saque = float(input("\tR$ "))
            if quantidade_de_saques > 2:
                print("\n\tVocê já excedeu a quantidade de 3 saques diários.")
                break
            elif valor_saque > saldo:
                print(f"\n\tValor inválido para o saque. Informe um valor dentro do seu saldo de R$ 0.01 a {saldo}.")
                continue
            elif saldo <= 0:
                print("\n\tO seu saldo atual é de R$ 0.00. Necessário depositar valor em sua conta.\n")
                break
            else:
                saldo -= valor_saque
                quantidade_de_saques += 1
                extrato += f"\tSaque: R$ {valor_saque}\n"
                print("\n\tRealizado o saque. Favor aguarde...")
                time.sleep(2)
                while True:
                    menu = "n"
                    print(f"\n\tSaque realizado com sucesso. Saldo Atual: {saldo}\n")
                    print("\tGostaria de realizar outro saque?")
                    repetir = input("\n\tDigite S para novo saque ou M para voltar ao menu: ").upper()
                    if repetir != "S" and repetir != "M":
                        print("\n\tOpção inválida. Favor escolher entre S para novo saque ou N para voltar ao menu inicial")
                        continue
                    elif repetir == "S":
                        break
                    elif repetir == "M":
                        menu = "s"
                        break 
    elif opcao == "E":
        print("\n\tEXTRATO\n")
        if extrato == "":
            print("\tConta sem movimentação.")
        else:
            print(extrato)
        while True:
            repetir = input("\tDigite M para voltar ao menu ou Q para encerrar: ").upper()
            if repetir == "M":
                break
            elif repetir == "Q":
                print("\n\tObrigado por utilizar os nossos serviços. Até logo!")
                time.sleep(2)
                sys.exit()
            else:
                print("Opção inválida. Favor escolher entre S para novo saque ou N para voltar ao menu inicial")
                continue
    elif opcao == "Q":
        print("\n\tObrigado por utilizar os nossos serviços. Até logo!")
        time.sleep(2)
        break
    else:
        print(f"\n\tOpção inválida.")
        continue
