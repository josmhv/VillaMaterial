class CartsController < ApplicationController
  def show
    @products = AddingProduct.all
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to carts_show_path
  end
end
