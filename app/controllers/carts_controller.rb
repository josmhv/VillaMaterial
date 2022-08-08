class CartsController < ApplicationController
  def show
    @products = AddingProduct.all
  end
  
  def delete_cart
    session[:cart] = Hash.new
    redirect_to request.referer
  end

  def remove_from_cart
    id = params[:id]
    @session_cart.delete(id)
    redirect_to request.referer 
  end

  def update
    @id = params[:id].to_i
    @session_cart[@id] = params[:qnt].to_i
    flash[:notice] = "Cantidad actualizada"
    redirect_to carts_show_path
  end
end
