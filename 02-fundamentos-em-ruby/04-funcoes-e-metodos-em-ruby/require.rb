# require_relative 'funcao_require.rb'

# /var/www/html/dio-formacao-ruby-on-rails-developer/02-fundamentos-em-ruby/04-funcoes-e-metodos-em-ruby/require.rb
# puts File.expand_path __FILE__

caminho_arquivo = File.expand_path __FILE__
puts File.dirname(caminho_arquivo)

require File.dirname(caminho_arquivo) + '/funcao_require'

funcao_require