Rails.application.routes.draw do

  # get 'company/index'

  # get 'user/index'
  # get 'user/show'

  post '/login', to: 'auth#create'
  get '/users/decode_token', to: 'users#decode_token'

  
  get 'companies/jumpbikes'
  get 'companies/helbizbikes'
  get 'companies/capbikes'
  get 'companies/capbikestatus'
  get 'companies/skipscooters'

  get 'companies/spinscooters'
  get 'companies/lyftscooters'
  get 'companies/razorscooters'
  get 'companies/birdscooters'

  # resources :users 
  resources :routes 
  resources :companies 
  resources :user_companies 
  resources :favorite_routes
  resources :complete_routes
  resources :reviews
  resources :users 
  resources :journals 
  resources :trips 

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
