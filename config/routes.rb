Rails.application.routes.draw do
  devise_for :users

  get "carts/show"
  delete "carts/remove_from_cart"

  resources :adding_products
  get "products/products"
  post "products/addToCart"

  get "home/contacts"
  root "home#index"

end
