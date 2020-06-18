Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  get 'admin', to: "admin#index"

  get '/login', to: "access#new"

  post 'access/new', to: "access#create"


  delete '/login', to: "access#destroy"
  delete '/logout', to: "access#destroy"


  root "shopper#index", as: 'shopper'  #shopper_path

  get '/shopper', to: "shopper#index"
  get '/logout' , to: "access#destroy"

  


 
end
