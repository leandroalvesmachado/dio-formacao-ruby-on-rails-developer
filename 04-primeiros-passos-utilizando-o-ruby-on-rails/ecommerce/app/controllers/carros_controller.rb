class CarrosController < ApplicationController
  def index
    @carros = Carro.todos
  end

  def show
    carros = Carro.todos
    id = params[:id].to_i

    @carro = carros.find { |c| c.id == id }
  end
end
