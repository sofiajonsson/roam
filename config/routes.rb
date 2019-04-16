Rails.application.routes.draw do
  resources :user_relationships
  resources :locations
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/posts/:id(.:format)', to: "posts/show"
end
