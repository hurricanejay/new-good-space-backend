Rails.application.routes.draw do
  resources :comments, only: [:create]
  resources :posts, only: [:create, :index, :show, :update, :destroy]
  resources :users, only: [:create, :index, :show]
  resources :likes, only: [:create]

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  get '/users/posts/:id', to: 'users#usersposts' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
