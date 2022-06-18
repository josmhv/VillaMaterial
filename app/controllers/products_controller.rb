class ProductsController < ApplicationController
  before_action :set_add_product, only: %i[show]
  protect_from_forgery with: :null_session

  def products
    @adding_products = AddingProduct.all
  end

  def addToCart
    pID = params[:productId].to_i
    session[:cart] << pID unless session[:cart].include?(pID)
  end

end
