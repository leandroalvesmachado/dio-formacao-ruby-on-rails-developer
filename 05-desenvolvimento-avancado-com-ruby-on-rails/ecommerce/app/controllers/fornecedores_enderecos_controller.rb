class FornecedoresEnderecosController < ApplicationController
  before_action :set_fornecedores_enderecos, only: %i[ show edit update destroy ]
  before_action :set_fornecedor

  # GET /fornecedores_enderecos or /fornecedores_enderecos.json
  def index
    @fornecedores_enderecos = FornecedoresEnderecos.all
  end

  # GET /fornecedores_enderecos/1 or /fornecedores_enderecos/1.json
  def show
  end

  # GET /fornecedores_enderecos/new
  def new
    @fornecedores_enderecos = FornecedoresEnderecos.new
  end

  # GET /fornecedores_enderecos/1/edit
  def edit
  end

  # POST /fornecedores_enderecos or /fornecedores_enderecos.json
  def create
    @fornecedores_enderecos = FornecedoresEnderecos.new(fornecedores_enderecos_params)

    respond_to do |format|
      if @fornecedores_enderecos.save
        format.html { redirect_to fornecedores_enderecos_url(@fornecedores_enderecos), notice: "Fornecedores enderecos was successfully created." }
        format.json { render :show, status: :created, location: @fornecedores_enderecos }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fornecedores_enderecos.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedores_enderecos/1 or /fornecedores_enderecos/1.json
  def update
    respond_to do |format|
      if @fornecedores_enderecos.update(fornecedores_enderecos_params)
        format.html { redirect_to fornecedores_enderecos_url(@fornecedores_enderecos), notice: "Fornecedores enderecos was successfully updated." }
        format.json { render :show, status: :ok, location: @fornecedores_enderecos }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fornecedores_enderecos.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedores_enderecos/1 or /fornecedores_enderecos/1.json
  def destroy
    @fornecedores_enderecos.destroy!

    respond_to do |format|
      format.html { redirect_to fornecedores_enderecos_index_url, notice: "Fornecedores enderecos was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedores_enderecos
      @fornecedores_enderecos = FornecedoresEnderecos.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fornecedores_enderecos_params
      params.require(:fornecedores_enderecos).permit(:endereco_id, :fornecedor_id)
    end

    def set_fornecedor
      @fornecedor = Fornecedor.find(params[:fornecedor_id])
    end
end
