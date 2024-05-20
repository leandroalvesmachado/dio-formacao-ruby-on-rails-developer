class FornecedorTipo < ApplicationRecord
  self.table_name = 'fornecedor_tipos'
  has_many :fornecedores, class_name: "Fornecedor", foreign_key: "fornecedor_tipo_id", dependent: :destroy
  validates_presence_of :nome
end
