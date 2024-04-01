# Descrição
# Neste desafio, seu objetivo é criar um algoritmo que avalie o desempenho de testes automatizados. O algoritmo 
# deve receber como entrada o número de testes automatizados bem-sucedidos e o número total de testes automatizados realizados. 
# Com base nessas informações, ele determinará a taxa de sucesso do teste.

# Críterios da taxa:
# Taxa de Sucesso = (Número de Testes Automatizados Bem-sucedidos / Número Total de Testes Automatizados Realizados) * 100

# Entrada
# A entrada consiste em dois números inteiros: o número de testes automatizados bem-sucedidos e o número total de 
# testes automatizados realizados.

# Saída
# A saída é uma string que informa a porcentagem ( taxaSucesso) da taxa de sucesso dos testes automatizados, 
# indicando se a funcionalidade testada está estável. A saída deve considerar duas casas decimais para essa solução.

# Exemplos
# A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se 
# de testar seu programa com esses exemplos e com outros casos possíveis.

# Solicita ao usuário a entrada para o número de testes passados e converte para inteiro
testes_passados = gets.to_i
total_testes = gets.to_i

# TODO: Calcule a taxa de sucesso e armazene-a na variável taxa_sucesso
taxa_sucesso = (testes_passados.to_f / total_testes) * 100

# Exibe a taxa de sucesso com 2 casas decimais
print "Taxa de sucesso: #{'%.2f' % taxa_sucesso}%"