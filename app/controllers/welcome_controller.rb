class WelcomeController < ApplicationController
  before_action :set_product, only: [:show]
  skip_before_action :authenticate_user!
  skip_before_action :require_admin
  layout 'index'
  
  def index
    @types = Type.all
    @products = Product.where(product_active: true)
    @services = Product.where(is_service: true)
  end
  
  def products
    @types = Type.all
    @products = Product.where(product_active: true)
  end
  
  def show
    @types = Type.all
  end
  
  def services
    @services = Product.where(is_service: true)
  end
  
  private
    def set_product
      @product = Product.find(params[:id])
    end
  
end
