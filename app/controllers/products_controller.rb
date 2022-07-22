class ProductsController < ApplicationController
  before_action :set_add_product, only: %i[show]
  protect_from_forgery with: :null_session

  def products
    @adding_products = AddingProduct.search(params[:query])
    # searche = params[:query]
    # if searche
    #   @adding_products = AddingProduct.all.select { |product|
    #     product.name.include?(searche)
    #   }
    # else
    #   @adding_products = AddingProduct.all
    # end
  end

  def addToCart
    @pID = params[:productId].to_i
    pQNT = params[:productqnt].to_i
    unless session[:cart].include?(@pID)
      session[:cart][@pID] = pQNT
    end
  end
end
