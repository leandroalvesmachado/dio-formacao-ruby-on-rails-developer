# Públicos e privados

# molde para criação do objeto
class Pessoa
  # construtor
  def initialize(nome, sobrenome)
    @nome = nome
    @sobrenome = sobrenome
  end

  # tudo abaixo do public se torna público
  # se colocar como private `<main>': private method `nome' called for an instance of Pessoa (NoMethodError)
  # tudo que estiver private, só pode ser acessado por métodos criados dentro da classe para uso posterior
  public

  # cria automaticamente os getters and setters das propriedades
  attr_accessor :nome, :sobrenome

  # metodo
  def mostrar_nome_completo
    "#{self.nome} #{self.sobrenome}"
  end
end

# criando instância do objeto
a = Pessoa.new('Leandro', 'Machado')

puts a.nome
puts a.mostrar_nome_completo

