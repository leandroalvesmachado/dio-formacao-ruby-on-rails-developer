class FornecedorTipo < ActiveRecord::Migration[7.1]
  def change
    add_column :fornecedores, :fornecedor_tipo_id, :integer
    add_foreign_key :fornecedores, :fornecedor_tipos
    # ou
    # add_reference :fornecedores, :fornecedor_tipos, foreign_key: true
  end
end
