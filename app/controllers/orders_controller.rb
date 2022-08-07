class OrdersController < ApplicationController
  def index
    @ind_total_price = []
  end

  def submit_info
    redirect_to orders_buy_path
  end

  def create
  end
end
