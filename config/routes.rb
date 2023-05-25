Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get '/lists', to: 'lists#index'
  get '/lists/new', to: 'lists#new'
  get '/lists/:id', to: 'lists#show', as: 'list'

  # POST routes
  post '/lists', to: 'lists#create'
end
