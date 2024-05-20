Rails.application.routes.draw do
  resources :enderecos
  resources :fornecedor_tipos
  resources :fornecedores do
    resources :fornecedores_enderecos
    # resources :fornecedores_enderecos, path: 'enderecos', as: 'enderecos'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
  # get '/sobre', to: 'home#sobre', as: 'pagina_sobre'

  # grupo de rotas (usa namespace)
  # namespace :api do
  #   resources :home, only: [:index]
  # end

  get '/carros', to: 'carros#index', as: 'carros' # Lista todos os carros
  
  get '/carros/cadastro', to: 'carros#new', as: 'carros_novo' # Exibe o formulário para criar um novo carro
  post '/carros', to: 'carros#create', as: 'carros_criar' # Cria um novo carro
  
  get '/carros/:id', to: 'carros#show', as: 'carros_show' # Exibe os detalhes de um carro específico
  
  get '/carros/:id/edicao', to: 'carros#edit', as: 'carros_edicao' # Exibe o formulário para editar um carro existente

  patch '/carros/:id', to: 'carros#update', as: 'carros_alterar_patch' # Atualiza um carro existente
  put '/carros/:id', to: 'carros#update', as: 'carros_alterar' # Atualiza um carro existente

  # delete '/carros/:id', to: 'carros#destroy'
  delete '/carros/:id', to: 'carros#destroy', as: 'carros_apagar' # Exclui um carro existente

  # resources :carros
end
