class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :initialize_session
  before_action :create_cart

  private

  def initialize_session
    if user_signed_in?
      session[:cart] ||= []
    end
  end


  def create_cart
    if user_signed_in?
      @cart = AddingProduct.find(session[:cart])
    end
  end

end
