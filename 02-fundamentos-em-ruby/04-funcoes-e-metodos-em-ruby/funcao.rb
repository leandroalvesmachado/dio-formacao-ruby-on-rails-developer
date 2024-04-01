def nome_do_metodo
  # corpo do método
  puts 'Primeiro método'
end

# chamando o método, pode ser nome_do_metodo ou nome_do_metodo()
nome_do_metodo

def funcao_com_parametros(nome)
  # corpo do método
  puts "Você passou o nome: #{nome}"
end

# chamando o método, pode ser funcao_com_parametros 'leandro' ou funcao_com_parametros('leandro')
funcao_com_parametros 'leandro'


def funcao_com_varios_parametros(nome, idade)
  # corpo do método
  puts "Você passou o nome #{nome} e a idade #{idade}"
end

# chamando o método, pode ser funcao_com_varios_parametros 'leandro', 21 ou funcao_com_parametros('leandro', 21)
funcao_com_varios_parametros 'leandro', 21


def funcao_com_parametro_e_valor_padrao(nome = 'Leandro')
  # corpo do método
  puts "Você passou o nome: #{nome}"
end

funcao_com_parametro_e_valor_padrao


def funcao_com_any_parametros(*parametros)
  puts "Função com N parametros - " + parametros.inspect
end

funcao_com_any_parametros(1, 2, 4)


def soma(a, b)
  return a + b # return é opcional, poderia ser na ultima linha a + b somente
end

def soma_sem_return(a, b)
  a + b # return é opcional
end