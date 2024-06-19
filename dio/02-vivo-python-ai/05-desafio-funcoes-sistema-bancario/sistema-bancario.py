menu = "n"
lista_usuarios = [["123", "andre", "endereco"]]
lista_contas = [["123", "0001", 1, 500.00, "deposito: 0.00", 0]]

import sys
import time

# def menu_opcoes():
#     menu = "n"
#     print("""
#     \tMENU INICIAL\n
#     Selecione a opção desejada:

#     [D] Depositar
#     [S] Sacar
#     [E] Extrato
#     [Q] Sair
#     """)
#     opcao = (input("\tOpção: ")).upper()
#     sacar() if fruit == 'Apple' else 'No'


def sacar(*, saldo, valor, extrato, numero_saques, limite_saques):
    menu = "n"
    if numero_saques > 2:
        print("\n\tVocê já excedeu a quantidade de 3 saques diários.")
        return
    elif valor > saldo:
        print(f"\n\tValor inválido para o saque. Informe um valor dentro do seu saldo de R$ 0.01 a {saldo}.")
        return
    elif saldo <= 0:
        print("\n\tO seu saldo atual é de R$ 0.00. Necessário depositar valor em sua conta.\n")
        return
    else:
        lista_contas[i][3] = saldo - valor
        # saldo -= valor
        lista_contas[i][5] += 1
        # numero_saques += 1
        lista_contas[i][4] = extrato + f"\tSaque: R$ {valor:.2f}\n"
        print("\n\tRealizado o saque. Favor aguarde...")
        time.sleep(2)
        while True:
            menu = "n"
            print(f"\n\tSaque realizado com sucesso. Saldo Atual: {saldo:.2f}\n")
            print(lista_contas)
            print("\tGostaria de realizar outro saque?")
            repetir = input("\n\tDigite S para novo saque ou M para voltar ao menu: ").upper()
            if repetir != "S" and repetir != "M":
                print("\n\tOpção inválida. Favor escolher entre S para novo saque ou N para voltar ao menu inicial")
                continue
            elif repetir == "S":
                return menu
            elif repetir == "M":
                # break
                # menu_opcoes()
                menu = "s"
                return menu

    # keyword only
    return saldo, extrato

def depositar(saldo, valor, extrato):
    lista_contas[i][3] += valor_deposito
    extrato += f"\tDepósito: R$ {lista_contas[i][4]}\n"
    print("\n\tRealizado o depósito. Favor aguarde...")
    time.sleep(2)
    print(f"\n\tDepósito realizado no valor de {valor_deposito}.\n\n\tSaldo Atual: R$ {lista_contas[i][3]}\n")
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
            return menu

def extrato(saldo, /, *, extrato):
    print(lista_contas[i][4])

def consultar_conta (conta):
    nova_lista = []
    for i, j in enumerate(lista_contas):
        if conta in j:
            indice_conta = i
            return indice_conta
            # return i
    exit()
    # TODO laço while para pedir conta existente



def criar_usuario ():
    pos = len(lista_usuarios)-1
    cpf = input("Digite o seu cpf: ")
    if lista_usuarios[pos][0] == cpf:
        print("usuario ja existente. Deseja criar uma nova conta?")
        opcao_conta = input("S/N: ")
        if opcao_conta == "S":
            criar_conta_corrente(cpf)
        else:
            print("Até logo!")
    else:

        nome_usuario = "joao"
        endereco = "rua 1"
        nova_lista = [cpf, nome_usuario, endereco]
        nova_conta = [cpf, "0001", len(lista_contas)+1]
        lista_usuarios.append(nova_lista)
        lista_contas.append(nova_conta)
        print(f"Usuários: {lista_usuarios}")
        print(f"Contas: {lista_contas}")

        # lista_usuarios[pos].append(cpf)
        # lista_usuarios[pos].append(nome_usuario)
        # lista_usuarios[pos].append(endereco)
       
        # lista_usuarios.append(cpf)
        # lista_usuarios.append(endereco)
            # nome, nascimento, cpf, endereco

def criar_conta_corrente(cpf):
    criar_conta = [
        # agencia, numero_da_conta, nome_usuario
    ]
    # numero sequencial (ex.: 0001, 0002)
    # 1 usuario pode ter varias contas
    # 1 conta para 1 usuario
    # filtrar a lista de usuarios pelo cpf

    nova_conta = [cpf, "0001", len(lista_contas)+1]
    lista_contas.append(nova_conta)
    print(f"Usuários: {lista_usuarios}")
    print(f"Contas: {lista_contas}")


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

def menu_principal():
    print(f"\n\n\tSEJA BEM-VINDO AO BANCO DIO\n\t{igual}")
    print("Se você é correntista, digite 1. Se não for e deseja abrir uma nova conta, digite 2. Para encerrar, digite 0.")
    opcao_correntista = int(input("Digite a opção desejada: "))
    if opcao_correntista == 1:
        numero_conta = float(input("Selecione a conta desejada: "))
        conta = consultar_conta(numero_conta)
        print(conta)
        print(conta[0][2])
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
    

igual = "="*28
print(f"\n\n\tSEJA BEM-VINDO AO BANCO DIO\n\t{igual}")
print("Se você é correntista, digite 1. Se não for e deseja abrir uma nova conta, digite 2. Para encerrar, digite 0.")
opcao_correntista = int(input("Digite a opção desejada: "))
if opcao_correntista == 1:
    numero_conta = float(input("Selecione a conta desejada: "))
    i = consultar_conta(numero_conta)
    # print(conta)
    # print(conta[0][2])
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
                print(f"\n\tVocê possui um saldo de {lista_contas[i][3]}. Qual o valor que deseja depositar?")
                valor_deposito = float(input("\tR$ "))
                menu = depositar(lista_contas[i][3], valor_deposito, lista_contas[i][4])
        elif opcao == "S":
            repetir = ""
            while True and menu == "n":
                print("\n\tSAQUE\n")
                print(f"\tVocê possui um saldo de R$ {lista_contas[i][3]:.2f}. Qual o valor que deseja sacar?")
                valor_saque = float(input("\tR$ "))
                menu = sacar(
                    saldo=lista_contas[i][3],
                    valor=valor_saque,
                    extrato=lista_contas[i][4],
                    numero_saques=lista_contas[i][5],
                    limite_saques=3
                    )
            # break
                # if quantidade_de_saques > 2:
                #     print("\n\tVocê já excedeu a quantidade de 3 saques diários.")
                #     break
                # elif valor_saque > saldo:
                #     print(f"\n\tValor inválido para o saque. Informe um valor dentro do seu saldo de R$ 0.01 a {saldo}.")
                #     continue
                # elif saldo <= 0:
                #     print("\n\tO seu saldo atual é de R$ 0.00. Necessário depositar valor em sua conta.\n")
                #     break
                # else:
                #     saldo -= valor_saque
                #     quantidade_de_saques += 1
                #     extrato += f"\tSaque: R$ {valor_saque}\n"
                #     print("\n\tRealizado o saque. Favor aguarde...")
                #     time.sleep(2)
                #     while True:
                #         menu = "n"
                #         print(f"\n\tSaque realizado com sucesso. Saldo Atual: {saldo}\n")
                #         print("\tGostaria de realizar outro saque?")
                #         repetir = input("\n\tDigite S para novo saque ou M para voltar ao menu: ").upper()
                #         if repetir != "S" and repetir != "M":
                #             print("\n\tOpção inválida. Favor escolher entre S para novo saque ou N para voltar ao menu inicial")
                #             continue
                #         elif repetir == "S":
                #             break
                #         elif repetir == "M":
                #             menu = "s"
                #             break 
        elif opcao == "E":
            print("\n\tEXTRATO\n")
            if extrato == "":
                print("\tConta sem movimentação.")
            else:
                print(lista_contas[i][4])
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
elif opcao_correntista == 2:
    criar_usuario()