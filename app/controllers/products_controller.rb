$global = 10
class ProductsController < ApplicationController
  before_action :set_add_product, only: %i[ show ]
  protect_from_forgery with: :null_session

  def products
    @adding_products = AddingProduct.all
    @i = 0
    @global = $global
  end

  def addToCart
    $global += 1
  end
end
