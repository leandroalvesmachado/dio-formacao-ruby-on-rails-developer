# frozen_string_literal: true

# Integer (Inteiro): Representa números inteiros. Exemplo: 5, -10, 1000.
# Float (Ponto Flutuante): Representa números decimais. Exemplo: 3.14, -0.001, 2.5.
# String (Texto): Sequência de caracteres. Exemplo: "Olá, mundo!", "Ruby é divertido!".
# Boolean (Booleano): Representa um valor verdadeiro (true) ou falso (false).
# Array (Arranjo): Coleção ordenada de elementos, acessíveis por um índice inteiro. Exemplo: [1, 2, 3, 4], ['a', 'b', 'c'].
# Hash (Dicionário ou Mapa): Coleção de pares chave-valor, onde cada chave é única. Exemplo: {'nome' => 'João', 'idade' => 30}.
# Symbol (Símbolo): Semelhante a uma string, mas imutável e frequentemente usada como identificadores. Exemplo: :nome, :idade.
# Nil (Nulo): Representa a ausência de valor. É frequentemente usado para indicar que uma variável não contém nenhum valor útil. Exemplo: nil.
# Range (Intervalo): Representa uma sequência de valores. Exemplo: 1..10, ('a'..'z').
# Regexp (Expressão Regular): Utilizado para manipulação de padrões de texto. Exemplo: /expressão_regular/.
# Class (Classe): Representa os tipos de dados definidos pelo usuário em Ruby. As classes são a base da orientação a objetos em Ruby.
# Module (Módulo): Similar a uma classe, mas não pode ser instanciado. É frequentemente utilizado para agrupar métodos e constantes relacionados.

a = 1
b = 1.1
c = "8".to_i
d = true
e = false
f = ''
g = :teste
h = {}
i = []
j = (1..2)

# ajuda a descobrir o tipo da variável
puts a.class # Integer
puts b.class # Float
puts c.class # String convertido para Integer
puts d.class # TrueClass
puts e.class # FalseClass
puts f.class # String
puts g.class # Symbol
puts h.class # Hash
puts i.class # Array
puts j.class # Range
