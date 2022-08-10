class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :initialize_session

  private

  def initialize_session
    if user_signed_in?
      begin
        session[:cart] ||= Hash.new
        @cart = AddingProduct.find(session[:cart].keys)
        @session_cart = session[:cart]
      rescue
        session[:cart] = Hash.new
        # @cart = AddingProduct.find(session[:cart].keys)
        # @session_cart = session[:cart]
        # p "session cart is empty caused by error"
      end

      create_admins
    end
  end


  def create_admins 
    if current_user.email === ENV['GMAIL_ADMIN']
      current_user.update_attribute :admin, true
    end
  end
end

# class HomeController < ApplicationController
#   skip_before_action :authenticate_user!

#   def index 
#   end
# end
# class ProductsController < ApplicationController
#   skip_before_action :authenticate_user!

#   def produtcs 
#   end
# end
