Rails.application.routes.draw do
  # get 'carts/index'
  get '/addproduct/:id', to: 'carts#addproduct', as:"addproduct"
  get '/removeproduct/:id', to: 'carts#removeproduct', as:"removeproduct"
  # as is called alias to use prefix name not show in routes
  resources :products, :carts
  # get 'homes/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
end
