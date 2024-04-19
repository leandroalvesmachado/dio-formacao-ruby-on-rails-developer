class ClientesController < ApplicationController
  # before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  
  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
    @cliente = Cliente.find(params[:id])
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)
    
    if @cliente.save
      return render :show, status: 201
    else
      return render json: @cliente.errors, status: 400
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update(cliente_params)
      render :show, status: :ok  # Retorna o cliente atualizado com status 200 OK
    else
      render json: @cliente.errors, status: :bad_request  # Retorna os erros de validação com status 400 Bad Request
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    Cliente.where(id: params[:id]).destroy_all

    return render json: {}, status: 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cliente_params
      params.require(:cliente).permit(:nome, :telefone, :cpf)
    end
end
