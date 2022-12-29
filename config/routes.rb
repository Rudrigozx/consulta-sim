Rails.application.routes.draw do
  resources :enderecos

  resources :menu
  resources :pacientes do
      end
  resources :consulta
  resources :medicos

    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
