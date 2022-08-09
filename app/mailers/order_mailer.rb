class OrderMailer < ApplicationMailer
  default to: 'pedidos.villamaterial@gmail.com'

  def order_email
    @user = params[:user]
    mail(from: @user, subject: "Nuevo pedido de #{@user}")
  end
end
