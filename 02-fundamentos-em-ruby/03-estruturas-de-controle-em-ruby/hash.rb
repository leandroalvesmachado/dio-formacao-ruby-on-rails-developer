# Hashes em Ruby
# Um hash em Ruby é uma coleção de pares chave-valor, onde cada chave é única. 
# Os hashes em Ruby são semelhantes aos dicionários em outras linguagens de programação.


# Alguns métodos úteis de hash em Ruby incluem:

# keys: Retorna um array contendo todas as chaves do hash.
# values: Retorna um array contendo todos os valores do hash.
# has_key?(chave), key?(chave), ou include?(chave): Verifica se o hash contém a chave especificada.
# has_value?(valor), ou value?(valor): Verifica se o hash contém o valor especificado.
# merge(outro_hash): Combina dois hashes.
# invert: Inverte as chaves e valores do hash.


# Criando um Hash
# Hash vazio
hash_vazio = {}

# Hash com elementos
hash = { "nome" => "João", "idade" => 30, "profissão" => "Programador" }

# Sintaxe alternativa para criar um hash
hash_alt = { nome: "Maria", idade: 25, profissao: "Designer" }



# Acessando e Modificando Valores
# Acessando valores
puts hash["nome"] # João
puts hash[:idade] # 30

# Modificando valores
hash["idade"] = 35
hash[:profissão] = "Engenheiro"



# Adicionando e Removendo Pares Chave-Valor
# Adicionando um novo par chave-valor
hash["cidade"] = "São Paulo"

# Removendo um par chave-valor
hash.delete("profissão")



# Iterando sobre um Hash
hash.each do |chave, valor|
  puts "#{chave}: #{valor}"
end

# Usando métodos específicos de iteração
hash.keys.each do |chave|
  puts chave
end

hash.values.each do |valor|
  puts valor
end
