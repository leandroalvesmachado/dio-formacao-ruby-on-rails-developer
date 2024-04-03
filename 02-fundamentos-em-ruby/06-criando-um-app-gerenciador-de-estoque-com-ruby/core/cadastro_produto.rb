def cadastro_produto(produtos)
  mensagem('Iniciando cadastro de produto ...', true, true, 2)

  mensagem('Digite o nome do produto: ', false, false)
  nome = gets.chomp
  limpar_tela

  mensagem("Digite a descrição do produto (#{nome}): ", false, false)
  descricao = gets.chomp
  limpar_tela

  mensagem("Digite o preço do produto (#{nome}): ", false, false)
  preco = gets.to_f
  limpar_tela

  mensagem("Digite a quantidade de estoque do produto (#{nome}): ", false, false)
  quantidade_estoque = gets.to_i
  limpar_tela
end