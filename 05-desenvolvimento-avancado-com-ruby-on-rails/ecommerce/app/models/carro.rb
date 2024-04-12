class Carro < ApplicationRecord
  self.table_name = "carros"

  validates_presence_of :nome, :modelo, :ano
  validates_length_of :nome, minimum: 10, maximum: 20
  # validates_numericality_of :ano, greater_than: 2000 # maior que
  # validates_numericality_of :ano, greater_than_or_equal_to: Time.now.year # maior igual que o ano atual
  # validates_numericality_of :ano, only_integer: true # aceita somente números inteiros
  # validates_numericality_of :ano, odd: true # aceita somente números ímpares
  validates_numericality_of :ano, even: false # aceita somente números pares
end
