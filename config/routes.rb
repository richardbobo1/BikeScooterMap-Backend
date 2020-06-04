Rails.application.routes.draw do
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

  resources :users 
  resources :routes 
  resources :companies 
  resources :user_companies 
  resources :favorite_routes
  resources :reviews
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
