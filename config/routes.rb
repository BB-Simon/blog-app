Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/posts/create', to: 'posts#create'
  get '/posts/new', to: 'posts#new', as: 'mew_post'

  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'post'
  get '/users/:user_id/posts', to: 'posts#index', as: 'posts'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users', to: 'users#index'

  # Defines the root path route ("/")
  root 'users#index'
end
