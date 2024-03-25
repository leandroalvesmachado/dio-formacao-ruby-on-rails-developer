# frozen_string_literal: true

# if: Usado para executar um bloco de código se uma condição for verdadeira.
if condition
  # código a ser executado se a condição for verdadeira
end

# if-else: Permite executar um bloco de código se a condição for verdadeira e outro bloco de código se a condição for falsa.
if condition
  # código a ser executado se a condição for verdadeira
else
  # código a ser executado se a condição for falsa
end

# elsif: Permite verificar múltiplas condições em sequência.
if condition1
  # código a ser executado se a condition1 for verdadeira
elsif condition2
  # código a ser executado se a condition2 for verdadeira
else
  # código a ser executado se nenhuma das condições anteriores for verdadeira
end

# unless: Semelhante ao if, mas executa um bloco de código se a condição for falsa.
unless condition
  # código a ser executado se a condição for falsa
end

# case: Permite avaliar uma expressão em relação a várias condições.
case expression
when condition1
  # código a ser executado se a condition1 for verdadeira
when condition2
  # código a ser executado se a condition2 for verdadeira
else
  # código a ser executado se nenhuma das condições anteriores for verdadeira
end
