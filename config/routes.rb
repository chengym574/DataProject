Rails.application.routes.draw do
  root 'home#index'
  
  get 'about', to: 'about#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pokemons, only: [:index]

  resources :trainers, only: [:index]

  resources :regions, only: [:index]
end
