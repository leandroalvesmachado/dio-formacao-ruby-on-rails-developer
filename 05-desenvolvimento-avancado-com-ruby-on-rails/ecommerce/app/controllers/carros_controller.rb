class CarrosController < ApplicationController
  # before_action, after_action
  
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
    # Carro.create(nome: params[:nome], modelo: params[:modelo], ano: params[:ano])
    # flash[:success] = "Carro criado com sucesso"

    # redirect_to carros_path

    @carro = Carro.new(nome: params[:nome], modelo: params[:modelo], ano: params[:ano])

    if @carro.save
      flash[:success] = "Carro criado com sucesso"
      return redirect_to carros_path
    end

    render :new, status: :unprocessable_entity
  end

  def edit
    @carro = Carro.find(params[:id])
  end

  def update
    @carro = Carro.find(params[:id])
    @carro.nome = params[:nome]
    @carro.modelo = params[:modelo]
    @carro.ano = params[:ano]
    @carro.save()

    if @carro.save
      flash[:success] = "Carro atualizado com sucesso"
      return carros_path
    end

    render :edit, status: :unprocessable_entity
  end

  def destroy
    carro = Carro.find(params[:id])
    carro.destroy

    flash[:success] = "Carro apagado com sucesso"

    redirect_to carros_path
  end
end
