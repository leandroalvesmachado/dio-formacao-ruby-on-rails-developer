require 'byebug'

puts 'Digite o nome e sobrenome válido'
nome_completo = gets.to_s

# stop sempre uma linha após a palavra debugger
# comando next no terminal avança
# comando s entra nas funções
# comando c para continuar o codigo
debugger

if nome_completo =~ /[W|w]alter .*?[S|s]antos/
  puts "#{escreve_em_verde}Válido #{nome_completo}"
else
  puts "#{escreve_em_vermelho}InVálido #{nome_completo}"
end
