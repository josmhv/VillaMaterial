class CartsController < ApplicationController
  # before_action :initializer

  # def initializer
  #   @session_cart = session[:cart]
  # end

  def show
    @products = AddingProduct.all
  end

  def remove_from_cart
    id = params[:id]
    @session_cart.delete(id)
    redirect_to carts_show_path
  end

  def update
    @id = params[:id].to_i
    @session_cart[@id] = params[:qnt].to_i
  end
end
