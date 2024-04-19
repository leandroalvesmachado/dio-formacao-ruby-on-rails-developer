Rails.application.routes.draw do
  post '/administradores/login', to: 'administradores#login'
  resources :administradores
  resources :funcionarios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#index';

  # resources :clientes
  get '/clientes', to: 'clientes#index'
  get '/clientes/:id', to: 'clientes#show'
  post '/clientes', to: 'clientes#create'
  delete '/clientes', to: 'clientes#destroy'
  match '/clientes/:id', to: 'clientes#update', via: [:patch, :put]
end
