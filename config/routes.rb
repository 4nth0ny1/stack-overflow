Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :sessions
  resources :tags

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "about-us", to: "about#index", as: :about
  get "products", to: "products#index", as: :products
  get "for-teams", to: "teams#index", as: :teams
  # get "posts-all", to: "posts#index", as: :posts    why does this break it? 

  # get "/", to: "main#index" #since this is the root you can replace it with ...
  root to: "main#index"



end
