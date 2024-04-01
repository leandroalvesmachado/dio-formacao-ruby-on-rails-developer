# Arrays em Ruby
# Um array em Ruby é uma coleção ordenada de objetos, onde cada objeto é identificado por um índice. 
# Os índices em Ruby começam em 0. Os arrays em Ruby podem conter objetos de diferentes tipos, incluindo outros arrays.

# Alguns métodos úteis de array em Ruby incluem:

# size ou length: Retorna o número de elementos no array.
# empty?: Retorna true se o array estiver vazio, caso contrário, retorna false.
# include?(elemento): Verifica se o array contém o elemento especificado.
# index(elemento): Retorna o índice do primeiro elemento encontrado no array, ou nil se não encontrado.
# uniq: Retorna um novo array com elementos únicos.
# sort: Retorna um novo array ordenado.
# reverse: Retorna um novo array com os elementos na ordem inversa.

# Criando um Array
# Array vazio
array_vazio = []

# Array com elementos
array_com_elementos = [1, 2, 3, 4, 5]

# Pode conter objetos de diferentes tipos
array_misto = [1, "dois", :tres, [4, 5, 6]]



# Acessando Elementos do Array
array = [1, 2, 3, 4, 5]

# Acessando elementos
puts array[0] # 1
puts array[2] # 3

# Índices negativos contam a partir do final do array
puts array[-1] # 5 (último elemento)



# Adicionando e Removendo Elementos
array = [1, 2, 3]

# Adicionando elementos
array << 4
array.push(5)

# Removendo elementos
array.pop # Remove o último elemento (5)
array.delete_at(0) # Remove o elemento no índice 0 (1)



# Iterando sobre um Array
array = [1, 2, 3, 4, 5]

# Usando each
array.each do |elemento|
  puts elemento
end

# Usando map para criar um novo array
dobro = array.map { |elemento| elemento * 2 }
puts dobro.inspect # [2, 4, 6, 8, 10]

