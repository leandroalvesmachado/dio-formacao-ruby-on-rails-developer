# Blocos em Ruby:
# Um bloco em Ruby é um trecho de código que pode ser associado a um método e executado quando 
# esse método é chamado. Os blocos são delimitados por {} ou do ... end. Eles podem conter uma ou mais linhas de código Ruby e podem ser passados como argumentos para métodos.

# Exemplo de um bloco em Ruby:

5.times do
  puts "Hello, world!"
end

# Yield em Ruby:
# yield é uma palavra-chave em Ruby que permite a passagem de controle e, opcionalmente, 
# valores de um método para um bloco associado a esse método. Quando um método contém yield, ele executa o bloco associado a ele.

# Exemplo de uso de yield em Ruby:

def greet
  puts "Hello!"
  yield
  puts "Goodbye!"
end

greet do
  puts "Welcome to the world of Ruby!"
end

# Saída
# Hello!
# Welcome to the world of Ruby!
# Goodbye!

# Proc em Ruby:
# Um Proc é um objeto que encapsula um bloco de código Ruby. Ele pode ser armazenado em uma variável, 
# passado como argumento para um método e invocado explicitamente. Procs são úteis quando você precisa representar um bloco 
# de código como um objeto, tornando-os portáteis e reutilizáveis.


# Criando um Proc:
# Você pode criar um Proc usando Proc.new ou -> { } (também conhecido como lambda literal).

# Usando Proc.new
my_proc = Proc.new { puts "Hello, world!" }
# Usando lambda literal
my_lambda = -> { puts "Hello, world!" }

my_proc.call
# Output: Hello, world!
my_lambda.call
# Output: Hello, world!


# Passando Argumentos para um Proc:
# Você pode passar argumentos para um Proc usando call.
my_proc = Proc.new { |name| puts "Hello, #{name}!" }
my_proc.call("John")


# Blocos vs. Procs:
# Blocos são usados principalmente como argumentos implícitos de métodos, enquanto Procs são objetos que representam 
# blocos de código e podem ser passados explicitamente como argumentos.

# Nota sobre Lambdas:
# Lambdas são um tipo especial de Proc que se comporta de forma ligeiramente diferente em relação à passagem de 
# argumentos e ao tratamento do retorno. Eles são criados usando a sintaxe -> { } ou lambda { }.



