class OrdersController < ApplicationController
  # require 'url_safe_base64'
  # require 'mime'
  # include MIME
  # before_action :send_email
  require 'json'
  
  def index
    @ind_total_price = []
  end

  def submit_info
    create
  end

  def create
    cart = session[:cart].to_json
    @order = Order.new(
      products: cart,
      user: current_user.email,
      paid: session[:total].to_f,
      info: [
          params[:name],
          params[:ciorif],
          params[:email],
          params[:tlf],
          params[:address]
      ]
    )
    
    if @order.save
      send_email
      session[:cart] = Hash.new
      session[:total] = 0
    else
      redirect_to orders_info_path
    end
  end

  def send_email
    begin
      OrderMailer.with(user: current_user.email).order_email.deliver_now
      p "Pedido creado, correo enviado"
      redirect_to root_path
    rescue Exception => e
      puts e.message
    end
  end
end
