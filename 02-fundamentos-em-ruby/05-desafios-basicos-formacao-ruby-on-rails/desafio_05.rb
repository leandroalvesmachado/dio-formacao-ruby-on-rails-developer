# Desafio
# Imagine que você está desenvolvendo um aplicativo para um banco que deseja calcular os juros compostos 
# de um investimento. Seu objetivo é criar uma função que receba três parâmetros: o valor inicial do investimento, 
# a taxa de juros anual e o período de tempo em anos. A função deve calcular e retornar o valor final 
# do investimento após o período determinado, levando em consideração os juros compostos.

# Entrada:
# A função deve receber os seguintes parâmetros:
# valor_inicial: um número inteiro ou decimal representando o valor inicial do investimento.
# taxa_juros: um número decimal representando a taxa de juros anual. Por exemplo, se a taxa for de 5%, o valor passado será 0.05.
# periodo: um número inteiro representando a quantidade de anos do investimento.

# Saída:
# A função deve retornar o valor final do investimento após o período determinado, considerando os juros compostos. 
# O valor final deve ser arredondado para duas casas decimais.

# Exemplos
# A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. 
# Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

# Entrada	Saída
# 5000
# 0.08
# 5
# Valor final do investimento: R$ 7346.64

# 1000
# 0.06
# 3
# Valor final do investimento: R$ 1191.02

# 20000
# 0.04
# 10
# Valor final do investimento: R$ 29604.89

# Solicita ao usuário os valores necessários para calcular o valor final do investimento
valor_inicial = gets.to_f
taxa_juros = gets.to_f
periodo = gets.to_i

def calcular_valor_final(valor_inicial, taxa_juros, periodo)
  valor_final = valor_inicial

  # TODO: Itera, com base no período em anos, para calcular o valor final com os juros.
  # Calcula o valor final usando a fórmula dos juros compostos: VF = VI * (1 + taxa_juros)^periodo
  valor_final = valor_inicial * (1 + taxa_juros)**periodo

  # Retorna o valor final do investimento, arredondado para duas casas decimais
  return valor_final.round(2)
end

# Calcula o valor final do investimento
valor_final = calcular_valor_final(valor_inicial, taxa_juros, periodo)

# Exibe o valor final do investimento
print "Valor final do investimento: R$ #{valor_final}"