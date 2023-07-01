Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'

  # User routes
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

  # User post routes
  get '/users/:user_id/posts', to: 'posts#index', as: 'posts'
  get '/users/:user_id/posts/new', to: 'posts#new', as: 'mew_post'
  post '/users/:user_id/posts', to: 'posts#create'
  get '/users/:user_id/posts/:post_id', to: 'posts#show', as: 'post'
  get "/users/:user_id/posts/:post_id/comments/new", to: "comments#new", as: 'new_comment'
  post "/users/:user_id/posts/:post_id/comments", to: "comments#create", as: 'comments'
  post "/users/:user_id/posts/:post_id", to: "likes#create", as: 'likes'
end
