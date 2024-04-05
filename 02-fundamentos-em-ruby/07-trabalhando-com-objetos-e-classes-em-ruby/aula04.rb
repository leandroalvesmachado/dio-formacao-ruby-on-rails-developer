# Herança, Protected, Overloading e acesso a classe base (super)

class Pessoa
  # construtor
  def initialize(nome, sobrenome, idade)
    @nome = nome
    @sobrenome = sobrenome
    @idade = idade
  end

  # tudo abaixo do public se torna público
  # se colocar como private `<main>': private method `nome' called for an instance of Pessoa (NoMethodError)
  # tudo que estiver private, só pode ser acessado por métodos criados dentro da classe para uso posterior
  public

  # cria automaticamente os getters and setters das propriedades
  attr_accessor :nome, :sobrenome, :idade

  # metodo
  def mostrar_nome_completo
    "#{self.nome} #{self.sobrenome}"
  end
end


# classe Joao herdando da classe Pessoa
class Joao < Pessoa
end

a = Joao.new('Leandro', 'Machado', 30)

puts a.inspect