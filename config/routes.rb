Rails.application.routes.draw do
  # get 'journal/index'
  # get 'journal/show'
  # get 'journal/create'
  get 'reviews/index'
  # get 'user_companies/index'
  # get 'user_companies/show'
  # get 'user_companies/create'
  # get 'user_companies/update'
  # get 'company/index'
  # get 'favorite_route/index'
  # get 'route/index'
  # get 'route/show'
  # get 'route/create'
  # get 'user/index'
  # get 'user/show'

  # resources :users 
  resources :routes 
  resources :companies 
  resources :user_companies 
  resources :favorite_routes
  resources :complete_routes
  resources :reviews
  resources :users 
  resources :journals 

  #  WILL NEED THIS FOR AUTH when i use it. 
  # namespace :api do
  #   namespace :v1 do
  #     resources :users, only: [:create]
  #     post '/login', to: 'auth#create'
  #     post "/login", to: "auth#login"
  #     get '/profile', to: 'users#profile'
  #   end
  # end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
