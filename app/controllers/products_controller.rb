class ProductsController < ApplicationController
  # before_action :set_add_product, only: %i[show]
  protect_from_forgery with: :null_session

  def products
    @adding_products = AddingProduct.search(params[:query])
  end

  def addToCart
    pID = params[:productId].to_i
    pQNT = params[:productqnt].to_i
    unless session[:cart].include?(pID.to_s)
      session[:cart][pID] = pQNT

      # Frontend Futuro Svelte
      flash[:notice] = "Producto agregado al carrito"
      flash[:notice_cart] = true
      redirect_to products_products_path
    end
  end
end
