Rails.application.routes.draw do
  resources :consulta
  resources :consultorios
  resources :agendas
  resources :medicos
  resources :pacientes
  resources :enderecos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
