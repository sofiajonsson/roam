Rails.application.routes.draw do
  resources :user_relationships
  resources :locations
  resources :comments
  resources :posts
  resources :users
  # resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/posts/:id(.:format)', to: "posts/show"


  root to: 'sessions#login'
 get "/login", to: "sessions#new"
post '/login', to: "sessions#create"
end
