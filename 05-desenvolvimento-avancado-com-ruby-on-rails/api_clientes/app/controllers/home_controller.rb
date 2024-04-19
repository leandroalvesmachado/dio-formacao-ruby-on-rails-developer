class HomeController < ApplicationController
  skip_before_action :autenticacao
  
  def index
    # render json: {
    #   mensagem: 'Bem-vindo a minha api'
    # }
  end
end
