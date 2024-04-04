# Classes instancias propriedades e métodos em POO

# molde para criação do objeto
class Pessoa
  # # set
  # def nome=(value)
  #   @nome = value
  # end

  # # get
  # def nome
  #   @nome
  # end

  # # set
  # def sobrenome=(value)
  #   @sobrenome = value
  # end

  # # get
  # def sobrenome
  #   @sobrenome
  # end

  # cria automaticamente os getters and setters das propriedades
  attr_accessor :nome, :sobrenome

  # metodo
  def mostrar_nome_completo
    "#{@nome} #{@sobrenome}"
  end
end

# criando varias instâncias do objeto
a = Pessoa.new
a.nome = 'Pessoa 1'
a.sobrenome = 'sobrenome'

# b = Pessoa.new
# b.nome = 'Pessoa 2'

# c = Pessoa.new
# c.nome = 'Pessoa 3'

puts a
puts a.inspect
puts a.mostrar_nome_completo

# puts b
# puts b.inspect

# puts c
# puts c.inspect