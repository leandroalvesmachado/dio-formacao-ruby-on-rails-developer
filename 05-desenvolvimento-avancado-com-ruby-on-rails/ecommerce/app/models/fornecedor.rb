class Fornecedor < ApplicationRecord
  self.table_name = "fornecedores"

  validates_presence_of :nome, :cnpj
end
