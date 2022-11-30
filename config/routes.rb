Rails.application.routes.draw do

  resources :pacientes do
    resources :enderecos
  end
  resources :menus
  resources :consulta
  resources :medicos

    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
