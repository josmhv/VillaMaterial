Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get "carts/show"
  post "carts/show"
  post "carts/update"
  delete "carts/remove_from_cart"

  resources :adding_products
  get "products/products"
  get "products/search_product"
  post "products/addToCart"

  get "orders/index"
  post "orders/generate_order"
  get 'orders/buy'

  get "home/contacts"
  root "home#index"
end
