json.extract! endereco, :id, :logradouro, :numero, :cep, :cidade, :estado, :complemento, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
