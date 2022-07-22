class OrdersController < ApplicationController
  def index
    # @Total =
    @ind_total_price = []
  end

  def generate_order
    # Generar orden para pagar con metodo de pago
    p @sub_total
  end

  def create
    # Generar registro de orden que se guarde en la db Orders
  end
end
