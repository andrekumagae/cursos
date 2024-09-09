# TODO: Crie uma Função: recomendar_plano para receber o consumo médio mensal:
def recomendar_plano(consumo):
  if consumo <= 10:
    plano = "Plano Essencial Fibra - 50Mbps"
  elif consumo <= 20:
    plano = "Plano Prata Fibra - 100Mbps"
  else:
    plano = "Plano Premium Fibra - 300Mbps"
  return plano
    
# TODO: Crie uma Estrutura Condicional para verifica o consumo médio mensal 
# TODO: Retorne o plano de internet adequado:
    

# Solicita ao usuário que insira o consumo médio mensal de dados:
consumo = float(input())
# Chama a função recomendar_plano com o consumo inserido e imprime o plano recomendado:
recomendar_plano(consumo)
print(recomendar_plano(consumo))
