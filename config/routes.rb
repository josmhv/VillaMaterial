Rails.application.routes.draw do
  resources :adding_products
  get "products/products"
  post "products/addToCart"
  get "home/contacts"
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
