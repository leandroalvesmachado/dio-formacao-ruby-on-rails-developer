class ApplicationController < ActionController::API
  before_action :autenticacao

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
end
