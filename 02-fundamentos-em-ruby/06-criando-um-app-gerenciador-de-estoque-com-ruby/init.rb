require_relative 'display/menu'
require_relative 'display/operacao_de_tela'
require_relative 'core/cadastrar_produto'
require_relative 'core/listar_produtos'
require_relative 'core/retirar_estoque'

produtos = [
  {
    id: 1,
    nome: 'Produto 1',
    descricao: 'Produto 1 descrição',
    preco: 1,
    quantidade: 20
  },
  {
    id: 2,
    nome: 'Produto 2',
    descricao: 'Produto 2 descrição',
    preco: 10,
    quantidade: 20
  },
  {
    id: 3,
    nome: 'Produto 3',
    descricao: 'Produto 3 descrição',
    preco: 100,
    quantidade: 10
  }
]
iniciar_menu(produtos)