# Construtores

# molde para criação do objeto
class Pessoa
  # construtor
  def initialize(nome, sobrenome)
    @nome = nome
    @sobrenome = sobrenome
  end

  # outra exemplo
  # def initialize(pessoa_hash = {})
  #   @nome = pessoa_hash[:nome]
  #   @sobrenome = pessoa_hash[:sobrenome]
  # end

  # cria automaticamente os getters and setters das propriedades
  attr_accessor :nome, :sobrenome

  # metodo
  def mostrar_nome_completo
    "#{self.nome} #{self.sobrenome}"
  end
end

# criando varias instâncias do objeto
a = Pessoa.new('Leandro', 'Machado')

puts a
puts a.inspect
puts a.mostrar_nome_completo

# funciona
puts Pessoa.new('Leandro', 'Machado').inspect

# puts Pessoa.new({
#   nome: 'Leandro',
#   sobrenome: 'Machado'
# })
