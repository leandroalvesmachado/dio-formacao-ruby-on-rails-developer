class CarrosController < ApplicationController
  def index
    # @carros = Carro.todos
    @carros = Carro.all
  end

  def show
    # carros = Carro.todos
    # id = params[:id].to_i

    # @carro = carros.find { |c| c.id == id }
    @carro = Carro.find(params[:id])
  end

  def edit
    @carro = Carro.find(params[:id])
  end
end
