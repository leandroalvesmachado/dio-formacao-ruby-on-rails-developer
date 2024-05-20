class ApplicationController < ActionController::API
  before_action :autenticacao, :perfil

  private
    def autenticacao
      header_auth = request.headers['Authorization']
      return render json: { erro: 'Token Bearer obrigatório' }, status: 401 if header_auth.blank?
      
      token = header_auth.split(' ').last

      begin
        token_decode = JWT.decode(token, TOKEN_JWT)
        id = token_decode.first["data"]["id"] rescue 0
        @adm = Administrador.find(id) 
      rescue => exception
        return render json: { erro: 'Token inválido' }, status: 401
      end
    end

    def perfil
      if @adm.perfil != 'ADM' && ['update', 'destroy'].include?(params[:action])
        return render json: { erro: 'Perfil Editor não pode atualizar e nem apagar' }, status: 403
      end
    end
end
