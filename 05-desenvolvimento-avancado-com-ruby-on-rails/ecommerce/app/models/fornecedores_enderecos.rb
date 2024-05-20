class FornecedoresEnderecos < ApplicationRecord
  self.table_name = "fornecedores_enderecos"
  belongs_to :endereco
  belongs_to :fornecedor
end
