# Tratamento de Exceções em Ruby
# begin, rescue, ensure, e end
# Em Ruby, você pode usar a estrutura begin, rescue, ensure, e end para manipular exceções. A sintaxe básica é a seguinte:

# begin
#   # código que pode gerar uma exceção
# rescue [ExceçãoTipo]
#   # código para lidar com a exceção
# ensure
#   # código que será executado sempre, independentemente de uma exceção ser lançada ou não
# end

# rescue: Captura exceções específicas ou todas as exceções se nenhum tipo for especificado.
# ensure: Código que será sempre executado, independentemente de uma exceção ser lançada ou não.

begin
  # Tentando fazer algo que pode gerar uma exceção
  result = 10 / 0
rescue ZeroDivisionError
  # Capturando uma exceção específica
  puts "Erro: divisão por zero!"
rescue => exception
  # Capturando todas as outras exceções
  puts "Erro inesperado: #{exception.message}"
ensure
  # Sempre será executado, independentemente de uma exceção ser lançada ou não
  puts "Fim do bloco de tratamento de exceções."
end

raise 'Idade inválida' # solta uma exceção, como se fosse o throw

# Outros tipos de erros
# ArgumentError: Lançada quando o número incorreto de argumentos é passado para um método.
# NameError: Lançada quando um identificador não existente é referenciado.
# NoMethodError: Lançada quando uma chamada de método é feita em um objeto que não tem o método especificado.
# RuntimeError: A exceção padrão lançada quando uma exceção não é especificada.
# StandardError: A classe base para todas as exceções internas da linguagem Ruby, exceto fatal, ScriptError, e SystemExit.
# TypeError: Lançada quando ocorre uma operação para um tipo de dado inválido.
# ZeroDivisionError: Lançada quando ocorre uma divisão por zero.
# LoadError: Lançada quando um arquivo necessário não pode ser carregado.
# IndexError: Lançada quando um índice está fora do alcance.
# EOFError: Lançada quando um método de entrada/saída atinge o final do arquivo.
# Interrupt: Lançada quando um processo é interrompido por um sinal externo.
# SystemExit: Lançada pelo método exit para encerrar o programa.
# SignalException: Lançada quando um sinal é recebido.
# RangeError: Lançada quando um valor numérico está fora do intervalo válido.
# RegexpError: Lançada quando ocorre um erro ao processar uma expressão regular.
