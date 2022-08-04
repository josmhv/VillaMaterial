class ProductsController < ApplicationController
  # before_action :set_add_product, only: %i[show]
  protect_from_forgery with: :null_session

  def products
    @adding_products = AddingProduct.search(params[:query])
  end

  def addToCart
    @pID = params[:productId].to_i
    pQNT = params[:productqnt].to_i
    unless session[:cart].include?(@pID)
      session[:cart][@pID] = pQNT
      flash[:notice] = "Producto agregado al carrito"
      flash[:notice_cart] = true
      redirect_to products_products_path
    else
      flash[:notice] = "Producto ya existe en el carrito"
      redirect_to products_products_path
    end
  end
end
