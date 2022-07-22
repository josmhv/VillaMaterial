class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :initialize_session

  private

  def initialize_session
    if user_signed_in?
      session[:cart] ||= Hash.new
      @cart = AddingProduct.find(session[:cart].keys)
      @session_cart = session[:cart]
    end
  end
end

class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index 
  end
end
