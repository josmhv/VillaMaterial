class OrdersController < ApplicationController
  def index
    @ind_total_price = []
  end

  def submit_info
    create()
  end

  def create
    @order = Order.new(
      products: [session[:cart]],
      user: current_user.email,
      paid: session[:total].to_i,
      info: [
          params[:name],
          params[:ciorif],
          params[:email],
          params[:tlf],
          params[:address]
      ]
    )
    
    if @order.save
      session[:cart] = Hash.new
      session[:total] = 0
      redirect_to orders_buy_path
    else
      redirect_to orders_info_path
    end
  end
end
