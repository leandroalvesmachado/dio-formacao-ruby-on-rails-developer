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

  def new
    @carro = Carro.new
  end

  def create
    Carro.create(nome: params[:nome], modelo: params[:modelo], ano: params[:ano])

    redirect_to carros_path
  end

  def edit
    @carro = Carro.find(params[:id])
  end

  def update
    carro = Carro.find(params[:id])
    carro.nome = params[:nome]
    carro.modelo = params[:modelo]
    carro.ano = params[:ano]
    carro.save()

    redirect_to carros_path
  end

  def destroy
    carro = Carro.find(params[:id])
    carro.destroy

    redirect_to carros_path
  end
end
