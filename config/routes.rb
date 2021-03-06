Rails.application.routes.draw do

  resources :user_relationships
  resources :locations
  resources :comments
  resources :posts
  resources :users

  # resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/posts/:id(.:format)', to: "posts/show"


  get '/login', to: 'sessions#new'
  root to: "sessions#new"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:id', to: 'users#show'
  get '/users/:id/profile', to: 'users#profile'
  get '/search', to: 'search#index'
  get '/feed', to: 'feed#index', as: 'feed'
  get '/profile', to: 'profile#index', as: 'profile'
end
