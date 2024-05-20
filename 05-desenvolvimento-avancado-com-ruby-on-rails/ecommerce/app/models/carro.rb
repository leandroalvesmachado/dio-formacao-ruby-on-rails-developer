class Carro < ApplicationRecord
  self.table_name = "carros"

  validates_presence_of :nome, :modelo, :ano
  validates_length_of :nome, minimum: 10, maximum: 20
  # validates_numericality_of :ano, greater_than: 2000 # maior que
  # validates_numericality_of :ano, greater_than_or_equal_to: Time.now.year # maior igual que o ano atual
  # validates_numericality_of :ano, only_integer: true # aceita somente números inteiros
  # validates_numericality_of :ano, odd: true # aceita somente números ímpares
  validates_numericality_of :ano, even: false # aceita somente números pares

  # after = depois
  # before = antes
  # validation, save, update, create, destroy
  # after_validation, after_save, after_update, after_create, after_destroy
  # before_validation, before_save, before_update, before_create, before_destroy

  # executa antes das validações
  before_validation :mostra_no_console_before, on: :create
  # ou
  # before_validation do
  #   puts "Para executar varias validações ao mesmo tempo"
  # end

   # executa depois das validações
  after_validation :mostra_no_console_after

  # executa antes de criar
  before_create :mostra_antes_de_criar

  # executa após criar
  after_create :mostra_antes_de_criar

  def mostra_no_console_before
    puts 'Executando before_validation :mostra_no_console, on: :create'
  end

  def mostra_no_console_after
    puts 'Executando after_validation :mostra_no_console_after'
  end
end
