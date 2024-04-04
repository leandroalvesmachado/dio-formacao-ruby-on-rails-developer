require 'terminal-table'

def retirar_estoque(produtos)
  mensagem_amarelo('===== Escolha um dos produtos abaixo =====', false, false)

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Quantidade']
    produtos.each do |produto|
      t.add_row [produto[:id], produto[:nome], produto[:quantidade]]
    end
  end

  puts table
  mensagem_azul('Digite o id do produto: ', false, false)
  id = gets.to_i

  produto = produtos.find{|p| p[:id] == id}

  if !produto
    mensagem_vermelho("Produto do ID #{id} não encontrado na lista.\n", true, true, 3)
    mensagem_amarelo("Deseja digitar o id novamente?", false, false)
    opcao = gets.chomp.downcase
    limpar_tela

    if opcao == "s" || opcao == "sim"
      retirar_estoque(produtos)
    end
  end

  limpar_tela
  mensagem_azul("Digite a quantidade que deseja retirar do estoque do produto #{amarelo(produto[:nome])}", false, false)
  mensagem_azul("Quantidade atual do produto: #{amarelo(produto[:quantidade])}", false, false)
  quantidade_retirada = gets.to_i
  produto[:quantidade] = produto[:quantidade] - quantidade_retirada

  mensagem_verde("Retirada realizada com sucesso", true, true, 3)
  listar_produtos(produtos)
end