json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :telefone, :cpf, :created_at
end

# json.array! @clientes do |cliente|
#   json.id cliente.id
#   json.nome cliente.nome
#   json.telefone cliente.telefone
#   json.cpf cliente.cpf
#   json.created_at cliente.created_at
# end