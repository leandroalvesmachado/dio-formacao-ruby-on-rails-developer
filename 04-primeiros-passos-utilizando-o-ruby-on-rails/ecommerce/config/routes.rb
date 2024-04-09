Rails.application.routes.draw do
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

  # Lista todos os carros
  get '/carros', to: 'carros#index', as: 'carros'

  # Exibe o formulário para criar um novo carro
  get '/carros/new', to: 'carros#new', as: 'new_carro'

  # Cria um novo carro
  post '/carros', to: 'carros#create'

  # Exibe os detalhes de um carro específico
  get '/carros/:id', to: 'carros#show', as: 'carros_show'

  # Exibe o formulário para editar um carro existente
  get '/carros/:id/edicao', to: 'carros#edit', as: 'edit_carro'

  # Atualiza um carro existente
  patch '/carros/:id', to: 'carros#update'
  put '/carros/:id', to: 'carros#update'

  # Exclui um carro existente
  # delete '/carros/:id', to: 'carros#destroy'
  get '/carros/:id/deletar', to: 'carros#destroy', as: 'carros_apagar'

  # resources :carros
end
