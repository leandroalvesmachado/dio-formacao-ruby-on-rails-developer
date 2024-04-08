class Carro
  def initialize(carro_hash = {})
    @id = carro_hash[:id]
    @nome = carro_hash[:nome]
    @modelo = carro_hash[:modelo]
    @ano = carro_hash[:ano]
  end
  
  attr_accessor :id, :nome, :modelo, :ano
  
  def self.todos
    [
      Carro.new({'id': 1, 'nome': 'Carro 1', 'modelo': 'Modelo 1', 'ano': '1991'}),
      Carro.new({'id': 2, 'nome': 'Carro 2', 'modelo': 'Modelo 2', 'ano': '1992'}),
      Carro.new({'id': 3, 'nome': 'Carro 3', 'modelo': 'Modelo 3', 'ano': '1993'}),
      Carro.new({'id': 4, 'nome': 'Carro 4', 'modelo': 'Modelo 4', 'ano': '1994'}),
      Carro.new({'id': 5, 'nome': 'Carro 5', 'modelo': 'Modelo 5', 'ano': '1995'}),
      Carro.new({'id': 6, 'nome': 'Carro 6', 'modelo': 'Modelo 6', 'ano': '1996'}),
      Carro.new({'id': 7, 'nome': 'Carro 7', 'modelo': 'Modelo 7', 'ano': '1997'})
    ]
  end
end