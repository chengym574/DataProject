Rails.application.routes.draw do
  root 'home#index'
  
  get 'about', to: 'about#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pokemons, only: [:index, :show] do
    get 'page/:page', action: :index, on: :collection
  end

  resources :trainers, only: [:index, :show]

  resources :regions, only: [:index, :show]
end
