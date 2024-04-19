class Cliente < ApplicationRecord
  validates_presence_of :nome, :telefone, :cpf
  validates_uniqueness_of :cpf
end
