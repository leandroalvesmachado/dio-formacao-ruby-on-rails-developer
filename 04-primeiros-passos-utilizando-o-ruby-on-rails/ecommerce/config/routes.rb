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

  get '/carros', to: 'carros#index', as: 'carros'
  get '/carros/:id', to: 'carros#show', as: 'carros_show'

  # resources :carros
end
