=begin
Exemplo comentário em bloco
=end

# O loop while executa um bloco de código repetidamente enquanto uma condição for verdadeira.
i = 0
while i < 5 do
  puts i
  i += 1
end

# O loop until executa um bloco de código repetidamente até que uma condição seja verdadeira.
i = 0
until i >= 5 do
  puts i
  i += 1
end

# O loop for itera sobre uma coleção de elementos.
for i in 0..4 do
  puts i
end

# O método each é usado para iterar sobre elementos em uma coleção.
(0..4).each do |i|
  puts i
end

# O método times executa um bloco de código um número específico de vezes.
5.times do |i|
  puts i
end

# O método loop executa um bloco de código infinitamente até que seja explicitamente interrompido.
i = 0
loop do
  puts i
  i += 1
  break if i >= 5
end

# break: É usado para sair de um loop.
# next: É usado para pular para a próxima iteração de um loop.
# redo: É usado para repetir a iteração atual do loop.

